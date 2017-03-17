class Declension::Name::ThirdGroup < Declension::BaseGroup
  def genitive
    "#{name}и"
  end

  def dative
    "#{name}і"
  end

  def accusative
    name
  end

  def ablative
    "#{name}’ю"
  end

  def local
    "#{name}і"
  end

  def vocative
    "#{name}е"
  end
end
