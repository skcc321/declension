require "spec_helper"

RSpec.describe Declension::Name::SecondGroup do
  it "converts to genitive" do
    expect(Declension::Name::SecondGroup.new('Олег').genitive).to eq('Олега')
    expect(Declension::Name::SecondGroup.new('Антін').genitive).to eq('Антона')
    expect(Declension::Name::SecondGroup.new('Антон').genitive).to eq('Антона')
    expect(Declension::Name::SecondGroup.new('Дмитро').genitive).to eq('Дмитра')
    expect(Declension::Name::SecondGroup.new('Сергій').genitive).to eq('Сергія')
    expect(Declension::Name::SecondGroup.new('Ігор').genitive).to eq('Ігоря')
    expect(Declension::Name::SecondGroup.new('Травень').genitive).to eq('Травеня')
    expect(Declension::Name::SecondGroup.new('Тиміш').genitive).to eq('Тимоша')
  end

  it "converts to dative" do
    expect(Declension::Name::SecondGroup.new('Олег').dative).to eq('Олегові')
    expect(Declension::Name::SecondGroup.new('Антін').dative).to eq('Антонові')
    expect(Declension::Name::SecondGroup.new('Антон').dative).to eq('Антонові')
    expect(Declension::Name::SecondGroup.new('Дмитро').dative).to eq('Дмитрові')
    expect(Declension::Name::SecondGroup.new('Сергій').dative).to eq('Сергієві')
    expect(Declension::Name::SecondGroup.new('Ігор').dative).to eq('Ігореві')
    expect(Declension::Name::SecondGroup.new('Травень').dative).to eq('Травеневі')
    expect(Declension::Name::SecondGroup.new('Тиміш').dative).to eq('Тимошеві')
  end

  it "converts to accusative" do
    expect(Declension::Name::SecondGroup.new('Олег').accusative).to eq('Олега')
    expect(Declension::Name::SecondGroup.new('Антін').accusative).to eq('Антона')
    expect(Declension::Name::SecondGroup.new('Антон').accusative).to eq('Антона')
    expect(Declension::Name::SecondGroup.new('Дмитро').accusative).to eq('Дмитра')
    expect(Declension::Name::SecondGroup.new('Сергій').accusative).to eq('Сергія')
    expect(Declension::Name::SecondGroup.new('Ігор').accusative).to eq('Ігоря')
    expect(Declension::Name::SecondGroup.new('Травень').accusative).to eq('Травеня')
    expect(Declension::Name::SecondGroup.new('Тиміш').accusative).to eq('Тимоша')
  end

  it "converts to ablative" do
    expect(Declension::Name::SecondGroup.new('Олег').ablative).to eq('Олегом')
    expect(Declension::Name::SecondGroup.new('Антін').ablative).to eq('Антоном')
    expect(Declension::Name::SecondGroup.new('Антон').ablative).to eq('Антоном')
    expect(Declension::Name::SecondGroup.new('Дмитро').ablative).to eq('Дмитром')
    expect(Declension::Name::SecondGroup.new('Сергій').ablative).to eq('Сергієм')
    expect(Declension::Name::SecondGroup.new('Ігор').ablative).to eq('Ігорем')
    expect(Declension::Name::SecondGroup.new('Травень').ablative).to eq('Травенем')
    expect(Declension::Name::SecondGroup.new('Тиміш').ablative).to eq('Тимошем')
  end

  it "converts to local" do
    expect(Declension::Name::SecondGroup.new('Олег').local).to eq('Олегові')
    expect(Declension::Name::SecondGroup.new('Антін').local).to eq('Антонові')
    expect(Declension::Name::SecondGroup.new('Антон').local).to eq('Антонові')
    expect(Declension::Name::SecondGroup.new('Дмитро').local).to eq('Дмитрові')
    expect(Declension::Name::SecondGroup.new('Сергій').local).to eq('Сергієві')
    expect(Declension::Name::SecondGroup.new('Ігор').local).to eq('Ігореві')
    expect(Declension::Name::SecondGroup.new('Травень').local).to eq('Травеневі')
    expect(Declension::Name::SecondGroup.new('Тиміш').local).to eq('Тимошеві')
  end

  it "converts to vocative" do
    expect(Declension::Name::SecondGroup.new('Олег').vocative).to eq('Олеже')
    expect(Declension::Name::SecondGroup.new('Антін').vocative).to eq('Антоне')
    expect(Declension::Name::SecondGroup.new('Антон').vocative).to eq('Антоне')
    expect(Declension::Name::SecondGroup.new('Дмитро').vocative).to eq('Дмитре')
    expect(Declension::Name::SecondGroup.new('Сергій').vocative).to eq('Сергію')
    expect(Declension::Name::SecondGroup.new('Ігор').vocative).to eq('Ігорю')
    expect(Declension::Name::SecondGroup.new('Травень').vocative).to eq('Травеню')
    expect(Declension::Name::SecondGroup.new('Тиміш').vocative).to eq('Тимоше')
  end
end
