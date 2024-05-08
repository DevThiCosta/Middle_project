class AddEventIdToTickets < ActiveRecord::Migration[7.1]
  def change
    add_reference :tickets, :event, null: false, foreign_key: true
  end
end
