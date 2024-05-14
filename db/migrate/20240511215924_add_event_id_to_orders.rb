class AddEventIdToOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orders, :event, null: false, foreign_key: true
  end
end
