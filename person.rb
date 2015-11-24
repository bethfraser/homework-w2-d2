

class Person

  attr_reader :name, :bookbag

  def initialize(name)
    @name = name
    @bookbag = {}
  end

  def display_string
    "Name: #{@name}\t Books borrowed: #{@bookbag.size}"
  end

  def borrow(book)
    @bookbag[book.title] = book
  end

  def return_book(book_title)
    @bookbag.delete(book_title)
  end


  def display_books
    @bookbag.map {|key, book| book.display_string }
  end

end
