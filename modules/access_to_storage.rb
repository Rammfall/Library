require 'yaml'

class Storage
  attr_accessor :data

  def initialize
    @path_to_file = './storage/data.yml'
  end

  def open
    file = File.read @path_to_file
    @data = YAML.load file
  end

  def write
    File.write @path_to_file, @data.to_yaml
  end
end
