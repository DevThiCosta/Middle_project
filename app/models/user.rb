class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :phone_number, presence: true, numericality: { only_integer: true }, length: { is: 10 }
  validates :birth_date, presence: true
  validates :id_document, presence: true, uniqueness: true
  validates :address, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
