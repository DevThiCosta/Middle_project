class Event < ApplicationRecord
  validates :local, presence: true
  validates :date, presence: true
  validates :artist, presence: true
  validates :age_rating, presence: true, numericality: { only_integer: true }

  has_many :tickets, dependent: :destroy
  has_one_attached :photo
end
