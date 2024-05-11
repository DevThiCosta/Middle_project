class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :price, presence: true, numericality: { float: true }
  validates :sector, presence: true
  # validates :category, presence: true
end
