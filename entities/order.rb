class Order
  include Validation

  attr_reader :book, :reader, :date

  def initialize(book, reader, date = Date.new)
    validate book, Book
    validate reader, Reader
    validate date, Date

    @book = book
    @reader = reader
    @date = date
  end
end
