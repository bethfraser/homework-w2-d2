

class Book

  attr_reader :title, :genre

  def initialize(options = {})
    @title = options[:title]
    @genre = options[:genre]
  end

  def display_string
    "#{@title}\t\t (#{genre})"
  end


end

