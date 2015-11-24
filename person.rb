

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

  def display_books
    puts "Wilma's Bookbag:\n"
    @bookbag.map {|key, book| book.display_string }
  end

end
