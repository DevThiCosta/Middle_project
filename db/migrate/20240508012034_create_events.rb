class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :local
      t.date :date
      t.string :artist
      t.integer :age_rating

      t.timestamps
    end
  end
end
