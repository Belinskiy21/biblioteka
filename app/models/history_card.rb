class HistoryCard < ApplicationRecord
  belongs_to :user
  belongs_to :book
  def self.history_saver(user_id, book_id, book_title, book_reader)
    card = HistoryCard.new(user_id: user_id, book_id: book_id, book_title: book_title, book_reader: book_reader)
    card.save
  end
end
