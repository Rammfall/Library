require 'json'

module Storage
  @path_to_file = '../storage/data.json'

  def open
    json_file = File.read @path_to_file
    @json = JSON.parse json_file
  end

  def write
    File.write @path_to_file, @json.to_json
  end

  def authors
    open
    @json['Author']
  end

  def write_something(arg)
    open
    @json['Author'] << arg
    write
  end
end
