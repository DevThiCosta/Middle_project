class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.date :birth_date
      t.string :id_document
      t.string :country
      t.string :address
      t.string :password
      t.boolean :allow_alert

      t.timestamps
    end
  end
end
