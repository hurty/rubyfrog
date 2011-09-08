# encoding: utf-8
require 'twitter'

class Job < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  
  attr_protected :token
  before_create :set_token
  
  # Validations
  validates :title,         presence: { message: "L'offre doit avoir un titre"},
                            length:   { maximum: 200, message: "Le titre est trop long (200 caractères max)" }
  validates :contract_type, presence: { message: "Vous devez spécifier le type de contrat"},
                            length:   { maximum: 100, message: "Le type de contrat est trop long (100 caractères max)" }
  validates :location,      presence: { message: "Vous devez spécifier un lieu"},
                            length:   { maximum: 200, message: "Le lieu est trop long (200 caractères max)" }
  validates :description,   presence: { message: "Vous devez décrire le poste et/ou le travail proposé"},
                            length:   { maximum: 20000, message: "La description est trop longue" }
  validates :company_name,  presence: { message: "Vous devez préciser le nom de la société qui propose cette offre"},
                            length:   { maximum: 100, message: "Le titre est trop long (100 caractères max)" }
  validates :company_email, presence: { message: "Vous devez donner une adresse e-mail"}, 
                            length:   { maximum: 255, message: "L'adresse est trop longue" }, 
                            format:   { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "L'adresse e-mail est invalide"}
  validates :company_url,   length:   { maximum: 255, message: "L'adresse est trop longue" }
  
  def publish
    # The job offer will be visible on the website
    self.public = true   
    
    begin
      # Maybe move this elsewhere
      Twitter.configure do |config|
        config.consumer_key = 'g1lGb5RruxYt5aktiNWAg'
        config.consumer_secret = 'AbhtKDWGfQVSlaPvrhma7Zr00I3Vu9s3Lb9oFfGVk'
        config.oauth_token = '370073753-r0IS9kciA7Wtsu9BBcGlfA6M6vvFdlLmaCHlW9kY'
        config.oauth_token_secret = 'xUnB2hyp86hN938dP2ViVljsMudPnuIvZW2IyW2w'
      end
    
      tweet = self.title
      if tweet.length > 110
        tweet = tweet[0..110] + '...'
      end
      
      client = Twitter::Client.new
      hash = client.update("#{tweet} #{job_url(self, host: "www.myrubyfrog.com")}")
    rescue Exception => e  
      my_logger = Logger.new("#{Rails.root}/log/twitter.log")
      my_logger.info("job tweet fail :[#{self.id}] #{self.title} -- #{e.to_s}")
    end
  end
  
  private
  
    # Generates a unique token for the job offer
    # This is used when the company wants to update informations or delete the offer
    def set_token
      # we remove slashes from token in order to avoid bad routing
      self.token = SecureRandom.base64(16).gsub('/', '')
    end
end
