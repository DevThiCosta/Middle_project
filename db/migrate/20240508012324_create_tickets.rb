class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.integer :price
      t.string :sector
      t.string :type

      t.timestamps
    end
  end
end
