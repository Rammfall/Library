class Statistic
  def initialize
    @storage = Storage.new
    @storage.open
    @data = @storage.data
  end

  def top_reader(quantity = 1)
    readers = []

    @data['Orders'].each do |reader|
      readers << reader.reader
    end

    puts readers[1..quantity]
  end
end
