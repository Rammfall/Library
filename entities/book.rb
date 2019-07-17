class Book
  include Validation

  attr_reader :title, :author

  def initialize(title, author)
    validate title
    validate author, Author

    @title = title
    @author = author
  end

  define_method :[] do |key|
    instance_variable_get "@#{key}"
  end
end
