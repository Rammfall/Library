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
      if ( readers[reader.reader] )
        readers[reader.reader] += 1
      else
        readers[reader.reader] = 1
      end
    end

    readers.each do |reader, quantity_books|
      sort_reader[quantity_books] = reader
    end

    sort_reader = sort_reader.to_a

    sort_reader = sort_reader.to_a.sort_by { |value| value }.reverse

    print sort_reader[0..quantity]
  end

  def top_books(quantity = 1)
    books = {}

    @data['Orders'].each do |book|
      if ( books[book.book] )
        books[book.book] += 1
      else
        books[book.book] = 1
      end
    end

    print books
  end

  def top

  end
end
