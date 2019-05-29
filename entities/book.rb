class Book
  def initialize(title, author)
    @title = title
    @author = author.is_a? Author
  end
end
