# coding: utf-8

# base group declaration
class Declension::BaseGroup
  attr_reader :word, :opts

  def initialize(word, opts = {})
    @word = word
    @opts = opts
  end

  def denominative
    word
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
