require './dependencies'

a = Library.new
# a.add_entities << Author.new('New name of smth', 'bio')

puts a.add_entities Author.new "some string", 'sdgf'
