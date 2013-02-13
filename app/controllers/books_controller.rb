class BooksController < ApplicationController

  respond_to :html

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create params[:book]
    respond_with @book
  end

  def show
    @book = Book.find_by_id params[:id]
  end

# def edit; end

end
