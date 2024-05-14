class Order < ApplicationRecord
  validates :pay_method, presence: true

  belongs_to :user
  belongs_to :ticket
  belongs_to :event
end
