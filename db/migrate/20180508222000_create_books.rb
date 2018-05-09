class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :published_at
      t.string :file
      t.integer :reader
      t.text :description

      t.timestamps
    end
  end
end
