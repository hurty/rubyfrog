class Job < ActiveRecord::Base
  validates :title,         presence: true, length: { maximum: 255 }
  validates :type,          presence: true, length: { maximum: 255 }
  validates :location,      presence: true, length: { maximum: 255 }
  validates :description,   presence: true, length: { maximum: 20000 }
  validates :company_name,  presence: true, length: { maximum: 150 }
  validates :company_email, presence: true, length: { maximum: 255 }
  validates :company_url,   length: { maximum: 255 }
end
