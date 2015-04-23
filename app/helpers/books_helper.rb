module BooksHelper
  def formatted_time(time)
    time.strftime("%B %d, %Y at %l:%M %p")
  end

  def format_average_stars(book)
    average = book.average_stars
    if average
      pluralize(number_with_precision(average, precision: 1), 'star')
    else
      'No reviews'
    end
  end

  def format_read_word(book)
    number_of_book_reviews = book.reviews.count
    if number_of_book_reviews == 0
      'Do Not Read'
    elsif number_of_book_reviews == 1
      'Read'
    else
      'Read All'
    end
  end


end