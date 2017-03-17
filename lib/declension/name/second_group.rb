class Declension::Name::SecondGroup < Declension::BaseGroup
  def initialize(name)
    safe_name = name =~ /рін|нір|фір\Z/ ? name : name.gsub(/[і](н|ш)\Z/i, 'о\1')

    super(safe_name)
  end
  def genitive
    case name
    when /ігор|лазар/i
      "#{name}я"
    when /[бвгджзклмнпрстфхцчшщ]\Z/i
      "#{name}а"
    when /[о]\Z/i
      name.gsub(/[о]\Z/i, 'а')
    when /[йь]\Z/i
      name.gsub(/[йь]\Z/i, 'я')
    end
  end

  def dative
    case name
    when /ігор|лазар/i
      "#{name}еві"
    when /[ь]\Z/i
      name.gsub(/[ь]\Z/i, 'еві')
    when /[ш]\Z/i
      "#{name}еві"
    when /[бвгджзклмнпрстфхцчщ]\Z/i
      "#{name}ові"
    when /[о]\Z/i
      "#{name}ві"
    when /[й]\Z/i
      name.gsub(/[й]\Z/i, 'єві')
    end
  end

  def accusative
    case name
    when /ігор|лазар/i
      "#{name}я"
    when /[бвгджзклмнпрстфхцчшщ]\Z/i
      "#{name}а"
    when /[о]\Z/i
      name.gsub(/[о]\Z/i, 'а')
    when /[йь]\Z/i
      name.gsub(/[йь]\Z/i, 'я')
    end
  end

  def ablative
    case name
    when /ігор|лазар/i
      "#{name}ем"
    when /[ь]\Z/i
      name.gsub(/[ь]\Z/i, 'ем')
    when /[ш]\Z/i
      "#{name}ем"
    when /[бвгджзклмнпрстфхцчщ]\Z/i
      "#{name}ом"
    when /[о]\Z/i
      "#{name}м"
    when /[й]\Z/i
      name.gsub(/[й]\Z/i, 'єм')
    end
  end

  def local
    case name
    when /ігор|лазар/i
      "#{name}еві"
    when /[ь]\Z/i
      name.gsub(/[ь]\Z/i, 'еві')
    when /[ш]\Z/i
      "#{name}еві"
    when /[бвгджзклмнпрстфхцчщ]\Z/i
      "#{name}ові"
    when /[о]\Z/i
      "#{name}ві"
    when /[й]\Z/i
      name.gsub(/[й]\Z/i, 'єві')
    end
  end

  def vocative
    case name
    when /ігор|лазар/i
      "#{name}ю"
    when /[ьй]\Z/i
      name.gsub(/[ьй]\Z/i, 'ю')
    when /[бвджзклмнпрстфхцчшщ]\Z/i
      "#{name}е"
    when /[о]\Z/i
      name.gsub(/[о]\Z/i, 'е')
    when /[г]\Z/i
      name.gsub(/[г]\Z/i, 'же')
    end
  end
end
