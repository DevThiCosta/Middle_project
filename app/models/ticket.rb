class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :event


  validates :sector, presence: true
  # validates :category, presence: true
end
