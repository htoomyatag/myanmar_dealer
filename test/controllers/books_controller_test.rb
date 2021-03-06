require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { author: @book.author, avatar_1: @book.avatar_1, avatar_2: @book.avatar_2, avatar_3: @book.avatar_3, avatar_4: @book.avatar_4, book_description: @book.book_description, number_of_paper: @book.number_of_paper, price: @book.price, publisher: @book.publisher, title: @book.title }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { author: @book.author, avatar_1: @book.avatar_1, avatar_2: @book.avatar_2, avatar_3: @book.avatar_3, avatar_4: @book.avatar_4, book_description: @book.book_description, number_of_paper: @book.number_of_paper, price: @book.price, publisher: @book.publisher, title: @book.title }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
