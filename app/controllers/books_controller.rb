class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @user = User.find(current_user.id)
  end
end
