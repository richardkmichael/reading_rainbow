require 'minitest_helper'

class BookTest < ActiveSupport::TestCase

  before :each do
    @book = Book.new(title: 'A New Book', author: 'Any Person')
  end

  test "it is unread by default" do
    refute @book.has_been_read?
  end

  test "it can be marked read" do
    @book.has_been_read = true
    assert @book.has_been_read?
  end

  test "it is not on the current reading list by default" do
    refute @book.on_current_list?
  end

  test "it can put onto the current reading list" do
    @book.on_current_list = true
    assert @book.on_current_list?
  end

  test "it can have a cover image" do
    @book.cover = Dir['test/fixtures/book_cover.jpg']

    assert_respond_to @book, :cover
  end

end
