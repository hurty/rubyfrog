# encoding: utf-8

class Job < ActiveRecord::Base
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
  
  private
  
    # Generates a unique token for the job offer
    # This is used when the company wants to update informations or delete the offer
    def set_token
      # we remove slashes from token in order to avoid bad routing
      self.token = SecureRandom.base64(16).gsub('/', '')
    end
end
