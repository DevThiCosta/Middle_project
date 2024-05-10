class User < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :birth_date, presence: true
  validates :id_document, presence: true
  validates :country, presence: true
  validates :address, presence: true
  validates :password, presence: true
  validates :allow_alert, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email_confirmation, presence: true

  has_many :orders
end
