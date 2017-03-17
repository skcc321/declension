module Declension::Name::GroupSelector
  FIRST_GROUP_REGEXP = /[ая]\Z/
  SECOND_GROUP_REGEXP = /[бвгджзйклмнопрстфхцчшщь]\Z/
  THIRD_GROUP_REGEXP = /[бвгджзйклмнпрстфхцчшщь]\Z/

  MALE = :male
  FEMALE = :female

  def group(name, opts = {})
    sex = opts.fetch(:sex, :male)

    if name =~ FIRST_GROUP_REGEXP
      Declension::Name::FirstGroup.new(name)
    elsif name =~ SECOND_GROUP_REGEXP && sex == MALE
      Declension::Name::SecondGroup.new(name)
    elsif name =~ THIRD_GROUP_REGEXP && sex == FEMALE
      Declension::Name::ThirdGroup.new(name)
    end
  end

  module_function :group
end
