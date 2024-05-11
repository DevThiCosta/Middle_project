class User < ApplicationRecord
  has_many :tickets, dependent: :destroy

<<<<<<< HEAD
  #validates :name, presence: true, length: { minimum: 2 }
  #validates :phone_number, presence: true, numericality: { only_integer: true }
  #validates :birth_date, presence: true
  #validates :id_document, presence: true, uniqueness: true
  #validates :address, presence: true
  #validates :email, presence: true, uniqueness: true
  #validates :encrypted_password, presence: true
=======
  # validates :name, presence: true, length: { minimum: 2 }
  # validates :phone_number, presence: true, numericality: { only_integer: true }
  # validates :birth_date, presence: true
  # validates :id_document, presence: true, uniqueness: true
  # validates :address, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :encrypted_password, presence: true
>>>>>>> 12cd31916e8e48ec3f74884ccfcf95be26b2e474

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
