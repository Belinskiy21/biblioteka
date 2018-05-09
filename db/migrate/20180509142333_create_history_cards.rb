class CreateHistoryCards < ActiveRecord::Migration[5.1]
  def change
    create_table :history_cards do |t|
      t.integer :user_id
      t.integer :book_id
      t.string :book_title

      t.timestamps
    end
  end
end
