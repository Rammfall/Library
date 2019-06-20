class Statistic
  def initialize
    @storage = Storage.new
    @storage.open
    @data = @storage.data
  end

  def top_reader(quantity = 0)
    readers = {}
    sort_reader = {}

    @data['Orders'].each do |reader|
      if (readers[reader.reader])
        readers[reader.reader] += 1
      else
        readers[reader.reader] = 1
      end
    end

    readers.each do |reader, quantity_books|
      sort_reader[quantity_books] = reader
    end

    sort_reader = sort_reader.to_a

    sort_reader = sort_reader.to_a.sort_by {|value| value}.reverse

    print sort_reader[0..quantity]
  end

  def top_books(quantity = 1)
    print top 'Orders', 'book'
  end

  def top(entity, column)
    data = Hash.new
    sort_data = {}

    @data[entity.to_s].each do |reader|
      data[reader[column]] = data[reader[column]] ? data[reader[column]] + 1 : 1
      # print column.to_sym
      # print data.class
    end

    data.each do |reader, quantity_books|
      sort_data[quantity_books] = reader
    end
    sort_data
  end
end
