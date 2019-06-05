class Library
  def initialize
    @storage = Storage.new
    @storage.open
    @data = @storage.data
  end

  def add_entities(entity) 
    type_entities = entity.class.to_s
    puts type_entities

    case type_entities
    when 'Author'
      @data['Author'] << entity
    when 'Book'
      @data['Books'] << entity
    when 'Order'
      @data['Orders'] << entity
    when 'Reader'
      @data['Readers'] << entity
    else
      puts 'Incorrect class for this App'
    end

    @storage.write
  end
end
