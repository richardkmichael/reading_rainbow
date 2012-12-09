class BooksController < ApplicationController

  respond_to :html

  def index; end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create params[:book]
    respond_with @book
  end

  def show; end

  def edit; end

end
