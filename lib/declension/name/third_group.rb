# coding: utf-8

class Declension::Name::ThirdGroup < Declension::BaseGroup
  def genitive
    "#{word}и"
  end

  def dative
    "#{word}і"
  end

  def accusative
    word
  end

  def ablative
    "#{word}’ю"
  end

  def local
    dative
  end

  def vocative
    "#{word}е"
  end
end
