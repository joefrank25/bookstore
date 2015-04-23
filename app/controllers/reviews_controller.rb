class ReviewsController < ApplicationController

  def index
    @reviews = @book.reviews.order('created_at desc')
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

end
