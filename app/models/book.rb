class Book < ApplicationRecord
  mount_uploader :file, ImageUploader

  def self.return_book(book_id)
    book = Book.find_by(id: book_id)
    book.update(reader: nil)
  end
end
