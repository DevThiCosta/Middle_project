class Order < ApplicationRecord
  validates :id, presence: true, numericality: { only_integer: true }
  validates :pay_method, presence: true
  validates :id_users, presence: true, numericality: { only_integer: true }
  validates :id_tickets, presence: true, numericality: { only_integer: true }
  
  belongs_to :user
  belongs_to :ticket
end
