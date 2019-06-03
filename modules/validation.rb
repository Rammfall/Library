module Validation
  def validate(field, class_obj = String)
    raise NotEmptyError if field.empty?
    raise TypeError unless field.instance_of? class_obj
  end
end
