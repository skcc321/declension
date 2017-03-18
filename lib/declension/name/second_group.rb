# coding: utf-8

class Declension::Name::SecondGroup < Declension::BaseGroup
  def initialize(word)
    safe_word = word =~ /рін|нір|фір\Z/ ? word : word.gsub(/[і](н|ш)\Z/i, 'о\1')

    super(safe_word)
  end

  def genitive
    case word
    when /ігор|лазар/i
      "#{word}я"
    when /[бвгджзклмнпрстфхцчшщ]\Z/i
      "#{word}а"
    when /[о]\Z/i
      word.gsub(/[о]\Z/i, 'а')
    when /[йь]\Z/i
      word.gsub(/[йь]\Z/i, 'я')
    end
  end

  def dative
    case word
    when /ігор|лазар|ш\Z/i
      "#{word}еві"
    when /[ь]\Z/i
      word.gsub(/[ь]\Z/i, 'еві')
    when /[бвгджзклмнпрстфхцчщ]\Z/i
      "#{word}ові"
    when /[о]\Z/i
      "#{word}ві"
    when /[й]\Z/i
      word.gsub(/[й]\Z/i, 'єві')
    end
  end

  def accusative
    case word
    when /ігор|лазар/i
      "#{word}я"
    when /[бвгджзклмнпрстфхцчшщ]\Z/i
      "#{word}а"
    when /[о]\Z/i
      word.gsub(/[о]\Z/i, 'а')
    when /[йь]\Z/i
      word.gsub(/[йь]\Z/i, 'я')
    end
  end

  def ablative
    case word
    when /ігор|лазар|ш\Z/i
      "#{word}ем"
    when /[ь]\Z/i
      word.gsub(/[ь]\Z/i, 'ем')
    when /[бвгджзклмнпрстфхцчщ]\Z/i
      "#{word}ом"
    when /[о]\Z/i
      "#{word}м"
    when /[й]\Z/i
      word.gsub(/[й]\Z/i, 'єм')
    end
  end

  def local
    dative
  end

  def vocative
    case word
    when /ігор|лазар/i
      "#{word}ю"
    when /[ьй]\Z/i
      word.gsub(/[ьй]\Z/i, 'ю')
    when /[бвджзклмнпрстфхцчшщ]\Z/i
      "#{word}е"
    when /[о]\Z/i
      word.gsub(/[о]\Z/i, 'е')
    when /[г]\Z/i
      word.gsub(/[г]\Z/i, 'же')
    end
  end
end
