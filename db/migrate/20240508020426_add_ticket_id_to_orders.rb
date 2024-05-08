class AddTicketIdToOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orders, :ticket, null: false, foreign_key: true
  end
end
