class AddArenaToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :arena, :string
  end
end
