class Job < ActiveRecord::Base
  attr_protected :token
  before_create :set_token
  
  # Validations
  validates :title,         presence: true, length: { maximum: 255 }
  validates :contract_type, presence: true, length: { maximum: 255 }
  validates :location,      presence: true, length: { maximum: 255 }
  validates :description,   presence: true, length: { maximum: 20000 }
  validates :company_name,  presence: true, length: { maximum: 150 }
  validates :company_email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :company_url,   length: { maximum: 255 }
  
  private
  
    # Generates a unique token for the job offer
    # This is used when the company wants to update informations or delete the offer
    def set_token
      # we remove slashes from token in order to avoid bad routing
      self.token = SecureRandom.base64(16).gsub('/', '')
    end
end
