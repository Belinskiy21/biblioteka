class AddColumnToHistoryCards < ActiveRecord::Migration[5.1]
  def change
    add_column :history_cards, :book_reader, :integer
  end
end
