class HistoryCardsController < ApplicationController
before_action :set_history_card, only: [:update]
  def index
    @history_cards = HistoryCard.where(user_id: current_user.id)
  end

  def create
  end

  def update
    Book.return_book(@history_card.book_id) if history_card_params[:book_reader]
    respond_to do |format|
      if @history_card.update(history_card_params)
        format.html { redirect_to books_url, notice: 'Your book was returned!' }
      else
        format.html { render :index }
      end
    end
  end

  private

  def set_history_card
    @history_card = HistoryCard.find(params[:id])
  end

  def history_card_params
    params.require(:history_card).permit(:book_reader, :book_title)
  end
end
