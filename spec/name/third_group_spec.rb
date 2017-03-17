require "spec_helper"

RSpec.describe Declension::Name::ThirdGroup do
  it "converts to genitive" do
    expect(Declension::Name::ThirdGroup.new('Любов').genitive).to eq('Любови')
  end

  it "converts to dative" do
    expect(Declension::Name::ThirdGroup.new('Любов').dative).to eq('Любові')
  end

  it "converts to accusative" do
    expect(Declension::Name::ThirdGroup.new('Любов').accusative).to eq('Любов')
  end

  it "converts to ablative" do
    expect(Declension::Name::ThirdGroup.new('Любов').ablative).to eq('Любов’ю')
  end

  it "converts to local" do
    expect(Declension::Name::ThirdGroup.new('Любов').local).to eq('Любові')
  end

  it "converts to vocative" do
    expect(Declension::Name::ThirdGroup.new('Любов').vocative).to eq('Любове')
  end
end
