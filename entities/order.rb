class Order
  include Validation

  attr_reader :book, :reader, :date

  def initialize(book, reader, date = Time.new)
    validate book, Book
    validate reader, Reader
    validate date, Time

    @book = book
    @reader = reader
    @date = date
  end
end
