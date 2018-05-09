class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  def index
    @books = Book.all.page(params[:page])
  end

  # GET /books/1
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /books/1
  def update
    HistoryCard.history_saver(current_user.id, @book.id, @book.title, current_user.id) if book_params[:reader]
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'You took this book!' } if book_params[:reader]
        format.html { redirect_to @book, notice: 'Book was successfully updated.' } unless book_params[:reader]
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :published_at, :file, :reader, :description)
    end
end
