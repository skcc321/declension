class Declension::Name::FirstGroup < Declension::BaseGroup
  def genitive
    case name
    when /а\Z/
      name.gsub(/а\Z/, 'и')
    when /ія\Z/
      name.gsub(/ія\Z/, 'ії')
    when /я\Z/
      name.gsub(/я\Z/, 'і')
    end
  end

  def dative
    case name
    when /га\Z/
      name.gsub(/га\Z/, 'зі')
    when /ка\Z/
      name.gsub(/ка\Z/, 'ці')
    when /ха\Z/
      name.gsub(/ха\Z/, 'сі')
    when /а\Z/
      name.gsub(/а\Z/, 'і')
    when /ія\Z/
      name.gsub(/ія\Z/, 'ії')
    when /я\Z/
      name.gsub(/я\Z/, 'і')
    end
  end

  def accusative
    case name
    when /а\Z/
      name.gsub(/а\Z/, 'у')
    when /ія\Z/
      name.gsub(/ія\Z/, 'ію')
    when /я\Z/
      name.gsub(/я\Z/, 'ю')
    end
  end

  def ablative
    case name
    when /а\Z/
      name.gsub(/а\Z/, 'ою')
    when /ія\Z/
      name.gsub(/ія\Z/, 'ією')
    when /я\Z/
      name.gsub(/я\Z/, 'ею')
    end
  end

  def local
    case name
    when /га\Z/
      name.gsub(/га\Z/, 'зі')
    when /ка\Z/
      name.gsub(/ка\Z/, 'ці')
    when /ха\Z/
      name.gsub(/ха\Z/, 'сі')
    when /а\Z/
      name.gsub(/а\Z/, 'і')
    when /ія\Z/
      name.gsub(/ія\Z/, 'ії')
    when /я\Z/
      name.gsub(/я\Z/, 'і')
    end
  end

  def vocative
    case name
    when /а\Z/
      name.gsub(/а\Z/, 'о')
    when /ія\Z/
      name.gsub(/ія\Z/, 'іє')
    when /лля\Z/
      name.gsub(/лля\Z/, 'ллє')
    when /ля\Z/
      name.gsub(/ля\Z/, 'лю')
    when /я\Z/
      name.gsub(/я\Z/, 'е')
    end
  end
end
