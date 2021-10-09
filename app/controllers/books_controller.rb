class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @user = User.find(current_user.id)
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book = Book.find(params[:id])
    @book_new = Book.new
    @user = User.find(@book.user_id)
  end

  def update
    
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
