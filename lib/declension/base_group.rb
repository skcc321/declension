class Declension::BaseGroup
  attr_reader :name

  def initialize(name, opts = {})
    @name = name
  end

  def denominative
    name
  end

  def genitive
    raise NotImplementedError
  end

  def dative
    raise NotImplementedError
  end

  def accusative
    raise NotImplementedError
  end

  def ablative
    raise NotImplementedError
  end

  def local
    raise NotImplementedError
  end

  def vocative
    raise NotImplementedError
  end
end
