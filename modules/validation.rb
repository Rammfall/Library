module Validation
  def validate(field, class_obj)
    raise NotEmptyError if field.empty?
    raise TypeError if field.instance_of? class_obj
  end
end
