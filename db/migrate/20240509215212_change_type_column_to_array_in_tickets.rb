class ChangeTypeColumnToArrayInTickets < ActiveRecord::Migration[7.1]
  def change
    # Altera o tipo da coluna 'type' para um array de strings
    change_column :tickets, :type, :string, array: true, default: [], using: "(string_to_array(type, ','))"
  end
end
