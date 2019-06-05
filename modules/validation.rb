module Validation
  def validate(field, class_obj = String)
    raise TypeError unless field.instance_of? class_obj
  end

  def validate_all(*fields)
    fields.map { |field| validate(field) }
  end
end
