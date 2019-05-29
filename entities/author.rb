class Author
  include Validation

  attr_reader :name, :biography

  def initialize(name, biography = 'empty')
    validate name

    @name = name
    @biography = biography
  end
end
