class Statistic
  def initialize
    @storage = Storage.new
    @storage.open
    @data = @storage.data
  end

  def top_reader quantity = 1
    readers = Array.new

    @data['Orders'].each {|reader| readers << reader.reader}
    puts readers
  end
end
