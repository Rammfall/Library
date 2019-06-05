class Reader
  include Validation

  attr_reader :name, :email, :city, :street, :house

  def initialize(name, email, city, street, house)
    validate_all(name, email, city, street, house)

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
end
