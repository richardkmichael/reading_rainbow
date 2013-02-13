require 'minitest_helper'

class BooksControllerTest < ActionController::TestCase
  test "it should show all books" do
    get :index
    assert_response :success

    books = assigns(:books)
    assert_equal Book.count, books.count
  end

  test "it should assign a new book" do
    get :new
    assert_response :success

    book = assigns :book
    assert book

    assert_blank book.title,           'Expected a new book to have an empty title.'
    assert_blank book.author,          'Expected a new book to have an empty author.'
    refute       book.has_been_read,   'Expected a new book to be unread.'
    refute       book.on_current_list, 'Expected a new book to not be on the current reading list.'

    # Auth token, four attributes, two hidden checkboxes, and the submit button.
    assert_select 'form input', 8
  end

  test "it should create a new book" do

    book = { title:           'Book 1 title.',
             author:          'Book 1 author.',
             has_been_read:   false,
             on_current_list: false }

    assert_difference ->{ Book.count }, 1 do
      post :create, book: book
    end
    assert_redirected_to book_path(assigns :book)
  end

  test "it should show a book" do
    id = Book.first.id

    get :show, id: id
    assert assigns(:book)
  end
end
