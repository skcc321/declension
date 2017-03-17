require "spec_helper"

RSpec.describe Declension::Name::GroupSelector do
  it "guesses group" do
    expect(Declension::Name::GroupSelector.group('Микола')).to be_a(Declension::Name::FirstGroup)
    expect(Declension::Name::GroupSelector.group('Ілля')).to be_a(Declension::Name::FirstGroup)
    expect(Declension::Name::GroupSelector.group('Дмитро')).to be_a(Declension::Name::SecondGroup)
    expect(Declension::Name::GroupSelector.group('Антон')).to be_a(Declension::Name::SecondGroup)
    expect(Declension::Name::GroupSelector.group('Олег')).to be_a(Declension::Name::SecondGroup)
    expect(Declension::Name::GroupSelector.group('Віктор')).to be_a(Declension::Name::SecondGroup)
    expect(Declension::Name::GroupSelector.group('Ангеліна', sex: :female)).to be_a(Declension::Name::FirstGroup)
    expect(Declension::Name::GroupSelector.group('Любов', sex: :female)).to be_a(Declension::Name::ThirdGroup)
  end
end
