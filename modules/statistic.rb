class Statistic
  def initialize
    @storage = Storage.new
    @storage.open
    @data = @storage.data
  end

  def top_reader(quantity = 1)
    readers = {}

    @data['Orders'].each do |reader|
      if ( readers[reader.reader] )
        readers[reader.reader] += 1
      else
        readers[reader.reader] = 1
      end
    end

    print readers
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
end
