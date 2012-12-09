require 'test_helper'

class BookTest < ActiveSupport::TestCase

  test "it indicates if it has been read" do
    book = Book.new(title: 'A New Book', author: 'Any Person')
    assert_respond_to book, :has_been_read?
  end

  test "it can be marked read" do
    book = Book.new(title: 'A New Book', author: 'Any Person')
    refute book.has_been_read?
    book.has_been_read = true
    assert book.has_been_read?
  end

  test "it can put onto the current reading list" do
    book = Book.new(title: 'A New Book', author: 'Any Person')
    refute book.on_current_list?
    book.on_current_list = true
    assert book.on_current_list?
  end

end
