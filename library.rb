class Library

  attr_reader :name, :bookshelf, :people
  
  def initialize(name)
    @name = name
    @bookshelf = {}
    @people = {}
  end

  def add_book(book)
    @bookshelf[book.title] = book
    # creates a new item in the @bookshelf hash with the book's title as its key and then the book object as the value 
  end

  def list_books
    if @bookshelf.empty?
      "There are no books in the library at present."
    else
      book_strings = @bookshelf.map {|key, book| book.display_string }
      book_strings.join("\n")
    end
  end

  def add_person(person)
    @people[person.name] = person
  end

  def list_people
    if @people.empty?
      "There are no customers for the library."
    else
      people_strings = @people.map {|key, person| person.display_string }
      people_strings.join"\n"
    end
  end

  def lend(person_name, book_title)
    # find the person by asking the people hash to return the value of the key which matches the person's name
    person = @people[person_name]
    book = @bookshelf.delete(book_title)
    person.borrow(book)
  end

  def return(person_name, book_title)
    person = @people[person_name]
    book = @people[person_name].bookbag[book_title]
    person.return_book(book_title)
    self.add_book(book)
  end


  def view_person_bookbag(person_name)
    person = @people[person_name]
    person.display_books
  end

  def view_borrowed_books
    @people.each do |person_name, person_object| 
      unless person_object.bookbag.empty?
        puts person_object.display_books 
      end
    end
  end

  def find_book(input_book_title)
    if @bookshelf.include?(input_book_title)
      puts "#{input_book_title} is in the library."

    else @people.include?(input_book_title)
      people_list = @people.map { |person_name, person_object| person_object }
      person_borrowing = people_list.detect { |person| person.bookbag[input_book_title] }
      puts "#{input_book_title} is being borrowed by #{person_borrowing.name}."
    end
  end

end


