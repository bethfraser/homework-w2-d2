require 'pry-byebug'
require_relative('book')
require_relative('library')
require_relative('person')

## TO DO
# create library 
# create book 
# create person

library = Library.new("Beth's Library")

# library.add_book(Book.new({title: 'Harry Potter', genre: 'Fantasy'}))
# book_2 = Book.new({title: 'The Hunger Games', genre: 'Fantasy'})
# book_3 = Book.new({title: "Ender's Game", genre: 'Science Fiction'})
# book_4 = Book.new({title: 'Gone Girl', genre: 'Thriller'})
# book_5 = Book.new({title: "Murder on the Orient Express", genre: 'Murder Mystery'})

# library.add_person(Person.new('John'))
# library.add_person(Person.new('Amanda'))
# library.add_person(Person.new('Jessica'))

library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))


library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))


# list books
puts library.list_books
puts "\n"

# list people
puts library.list_people
puts "\n"

# lend book to person
puts "Wilma borrows 'The Hobbit' and 'Histories'.\n\n"
library.lend("Wilma", "The Hobbit")
library.lend("Wilma", "Histories")


puts library.list_people
puts "\n"

# return book to library
puts "Wilma returns 'The Hobbit'.\n\n"
library.return("Wilma", "The Hobbit")

puts "Wilma's bookbag contains:"
puts library.view_person_bookbag("Wilma")

# list borrowed books
puts "\nFred borrows 'To Kill a Mockingbird'.\n"
library.lend("Fred", "To Kill a Mockingbird")

puts "\nCurrent books in the library:"
puts library.list_books
puts "\nCurrent books being borrowed:"
library.view_borrowed_books

puts "\n"
library.find_book("To Kill a Mockingbird")
library.find_book("Histories")
library.find_book("A Brief History of Time")
library.find_book("The Hobbit")

# binding.pry;''
