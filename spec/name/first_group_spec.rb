require "spec_helper"

RSpec.describe Declension::Name::FirstGroup do
  it "converts to genitive" do
    expect(Declension::Name::FirstGroup.new('Ганна').genitive).to eq('Ганни')
    expect(Declension::Name::FirstGroup.new('Микола').genitive).to eq('Миколи')
    expect(Declension::Name::FirstGroup.new('Мотря').genitive).to eq('Мотрі')
    expect(Declension::Name::FirstGroup.new('Соломія').genitive).to eq('Соломії')
    expect(Declension::Name::FirstGroup.new('Наталя').genitive).to eq('Наталі')
    expect(Declension::Name::FirstGroup.new('Ілля').genitive).to eq('Іллі')
  end

  it "converts to dative" do
    expect(Declension::Name::FirstGroup.new('Ганна').dative).to eq('Ганні')
    expect(Declension::Name::FirstGroup.new('Микола').dative).to eq('Миколі')
    expect(Declension::Name::FirstGroup.new('Мотря').dative).to eq('Мотрі')
    expect(Declension::Name::FirstGroup.new('Соломія').dative).to eq('Соломії')
    expect(Declension::Name::FirstGroup.new('Наталя').dative).to eq('Наталі')
    expect(Declension::Name::FirstGroup.new('Ілля').dative).to eq('Іллі')
    expect(Declension::Name::FirstGroup.new('Ольга').dative).to eq('Ользі')
    expect(Declension::Name::FirstGroup.new('Палажка').dative).to eq('Палажці')
    expect(Declension::Name::FirstGroup.new('Солоха').dative).to eq('Солосі')
  end

  it "converts to accusative" do
    expect(Declension::Name::FirstGroup.new('Ганна').accusative).to eq('Ганну')
    expect(Declension::Name::FirstGroup.new('Микола').accusative).to eq('Миколу')
    expect(Declension::Name::FirstGroup.new('Мотря').accusative).to eq('Мотрю')
    expect(Declension::Name::FirstGroup.new('Соломія').accusative).to eq('Соломію')
    expect(Declension::Name::FirstGroup.new('Наталя').accusative).to eq('Наталю')
    expect(Declension::Name::FirstGroup.new('Ілля').accusative).to eq('Іллю')
  end

  it "converts to ablative" do
    expect(Declension::Name::FirstGroup.new('Ганна').ablative).to eq('Ганною')
    expect(Declension::Name::FirstGroup.new('Микола').ablative).to eq('Миколою')
    expect(Declension::Name::FirstGroup.new('Мотря').ablative).to eq('Мотрею')
    expect(Declension::Name::FirstGroup.new('Соломія').ablative).to eq('Соломією')
    expect(Declension::Name::FirstGroup.new('Наталя').ablative).to eq('Наталею')
    expect(Declension::Name::FirstGroup.new('Ілля').ablative).to eq('Іллею')
  end

  it "converts to local" do
    expect(Declension::Name::FirstGroup.new('Ганна').local).to eq('Ганні')
    expect(Declension::Name::FirstGroup.new('Микола').local).to eq('Миколі')
    expect(Declension::Name::FirstGroup.new('Мотря').local).to eq('Мотрі')
    expect(Declension::Name::FirstGroup.new('Соломія').local).to eq('Соломії')
    expect(Declension::Name::FirstGroup.new('Наталя').local).to eq('Наталі')
    expect(Declension::Name::FirstGroup.new('Ілля').local).to eq('Іллі')
    expect(Declension::Name::FirstGroup.new('Ольга').local).to eq('Ользі')
    expect(Declension::Name::FirstGroup.new('Палажка').local).to eq('Палажці')
    expect(Declension::Name::FirstGroup.new('Солоха').local).to eq('Солосі')
  end

  it "converts to vocative" do
    expect(Declension::Name::FirstGroup.new('Ганна').vocative).to eq('Ганно')
    expect(Declension::Name::FirstGroup.new('Микола').vocative).to eq('Миколо')
    expect(Declension::Name::FirstGroup.new('Мотря').vocative).to eq('Мотре')
    expect(Declension::Name::FirstGroup.new('Соломія').vocative).to eq('Соломіє')
    expect(Declension::Name::FirstGroup.new('Наталя').vocative).to eq('Наталю')
    expect(Declension::Name::FirstGroup.new('Ілля').vocative).to eq('Іллє')
  end
end
