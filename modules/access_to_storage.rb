require 'json'

class Storage
  attr_accessor :json

  def initialize
    @path_to_file = '../storage/data.json'
  end

  def open
    json_file = File.read @path_to_file
    @json = JSON.parse json_file
  end

  def write
    File.write @path_to_file, @json.to_json
  end
end
