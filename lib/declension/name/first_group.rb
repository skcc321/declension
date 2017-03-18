# coding: utf-8

class Declension::Name::FirstGroup < Declension::BaseGroup
  def genitive
    case word
    when /а\Z/i
      word.gsub(/а\Z/i, 'и')
    when /ія\Z/i
      word.gsub(/ія\Z/i, 'ії')
    when /я\Z/i
      word.gsub(/я\Z/i, 'і')
    end
  end

  def dative
    case word
    when /га\Z/i
      word.gsub(/га\Z/i, 'зі')
    when /ка\Z/i
      word.gsub(/ка\Z/i, 'ці')
    when /ха\Z/i
      word.gsub(/ха\Z/i, 'сі')
    when /ія\Z/i
      word.gsub(/ія\Z/i, 'ії')
    when /[ая]\Z/i
      word.gsub(/[ая]\Z/i, 'і')
    end
  end

  def accusative
    case word
    when /а\Z/
      word.gsub(/а\Z/, 'у')
    when /ія\Z/
      word.gsub(/ія\Z/, 'ію')
    when /я\Z/
      word.gsub(/я\Z/, 'ю')
    end
  end

  def ablative
    case word
    when /а\Z/
      word.gsub(/а\Z/, 'ою')
    when /ія\Z/
      word.gsub(/ія\Z/, 'ією')
    when /я\Z/
      word.gsub(/я\Z/, 'ею')
    end
  end

  def local
    dative
  end

  def vocative
    case word
    when /а\Z/
      word.gsub(/а\Z/, 'о')
    when /ія\Z/
      word.gsub(/ія\Z/, 'іє')
    when /лля\Z/
      word.gsub(/лля\Z/, 'ллє')
    when /ля\Z/
      word.gsub(/ля\Z/, 'лю')
    when /я\Z/
      word.gsub(/я\Z/, 'е')
    end
  end
end
