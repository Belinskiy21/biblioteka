class Book < ApplicationRecord
  mount_uploader :file, ImageUploader
  has_many :history_cards

  validates :title, :author, :published_at, :description, presence: true

  def self.return_book(book_id)
    book = Book.find_by(id: book_id)
    book.update(reader: nil)
  end
end
