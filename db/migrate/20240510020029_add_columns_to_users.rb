class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :phone_number, :string
    add_column :users, :birth_date, :date
    add_column :users, :id_document, :string
    add_column :users, :address, :string
    add_column :users, :allow_alert, :boolean
  end
end
