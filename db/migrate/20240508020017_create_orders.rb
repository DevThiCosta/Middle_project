class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :pay_method

      t.timestamps
    end
  end
end
