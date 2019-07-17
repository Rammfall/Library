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

  define_method :[] do |property|
    instance_variable_get "@#{property}"
  end
end
