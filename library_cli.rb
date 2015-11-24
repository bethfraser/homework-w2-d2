require 'pry-byebug'
require_relative('book')
require_relative('library')
require_relative('person')

library = Library.new("Beth's Library")

library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))


library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))

library.lend("Wilma", "Histories")
library.lend("Fred", "To Kill a Mockingbird")



#### Command line interface


puts "Welcome to #{library.name}.\nPlease enter your name:\n"
name = gets.chomp

if library.people.include?(name)
  puts "Hello again #{name}."
else
  library.add_person(Person.new(name))
  puts "Welcome, #{name}! We have created an account for you."
end

puts "Would you like to (1)borrow or (2)return a book? (Type 1 or 2)"
choice = gets.chomp.to_i

if choice == 1
  puts "Which book would you like to borrow?"
  book = gets.chomp
  library.lend(name, book)
  puts "Great!"
  library.find_book(book)
else 
  puts "Which book would you like to return?"
  book = gets.chomp
  library.return(name, book)
  puts "Thank you!" 
  library.find_book(book)
end

