require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get new" do

    get :new
    assert_response :success

    # A new book.
    book = assigns :book
    assert book

    # Initial book attribute state.
    assert_blank book.title,           'Expected a new book to have an empty title.'
    assert_blank book.author,          'Expected a new book to have an empty author.'
    refute       book.has_been_read,   'Expected a new book to be unread.'
    refute       book.on_current_list, 'Expected a new book to not be on the current reading list.'

    # Auth token, four attributes, two hidden checkboxes, and the submit button.
    assert_select 'form input', 8
  end

  test "it should create a new book" do
    assert false # FIXME
  end
end
