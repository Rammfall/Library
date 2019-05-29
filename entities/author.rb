require '../storage/access_to_storage'

class Author
  include Storage

  def initialize(name, biography)
    raise ArgumentError, 'Name must be type of String' unless name.is_a? String

    @name = name
    @biography = biography
  end
end
