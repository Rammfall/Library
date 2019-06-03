class Library
  def initialize
    @storage = Storage.new
    @storage.open
    @data = @storage.json
  end

  def add_entities(entity)
    type_entities = entity.class
    puts type_entities == Author



    case type_entities
    when Author
      puts "amsd"
      @data["Author"] << entity
    when Book
      @data["Book"] << entity
    when Order
      @data['Order'] << entity
    when Reader
      @data['Reader'] << entity
    else
      puts 'Incorrect class for this App'
    end
    puts @data

    @storage.write
  end
end
