class Statistic
  def initialize
    @storage = Storage.new
    @storage.open
    @data = @storage.data
  end

  def top_reader(quantity = 1)
    res = top 'Orders', 'reader', 'name'

    puts output(res[0..quantity - 1], quantity, 'Readers')
  end

  def top_books(quantity = 1)
    res = top 'Orders', 'book', 'title'

    puts output(res[0..quantity - 1], quantity, 'Books')
  end

  def top(entity, column, field)
    sort_data = Hash.new(0)

    @data[entity].each do |order|
      sort_data[order[column][field]] += 1
    end

    sort_data.sort_by do |_title, num|
      -num
    end.to_a
  end

  def output(array, quantity, word)
    list = array.map { |item| item[0].to_s }.join(', ')
    "Top #{quantity} #{word} - #{list}"
  end
end
