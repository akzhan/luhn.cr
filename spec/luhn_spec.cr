require "spec"
require "../src/luhn"

describe Luhn do
  it "sums numbers in a digit" do
    Luhn.sum_of(10).should eq 1
    Luhn.sum_of(22).should eq 4
    Luhn.sum_of(99).should eq 18
  end

  it "doubles numbers according to luhn" do
    Luhn.luhn_doubled(4992739871).should eq [4, 18, 9, 4, 7, 6, 9, 16, 7, 2]
    Luhn.luhn_doubled(123).should eq [2, 2, 6]
    Luhn.luhn_doubled(700).should eq [14, 0, 0]
  end

  it "provides a valid control number based on a number" do
    Luhn.checksum(123).should eq 0
    Luhn.checksum(12345123451234).should eq 8
    Luhn.checksum(4992739871).should eq 6
    Luhn.checksum("23994700000053866078").should eq 3
    Luhn.checksum(199600).should eq 8
    Luhn.checksum(700).should eq 5
  end

  it "validates valid numbers" do
    Luhn.valid?(123451234512348).should be_true
    Luhn.valid?(1996008).should be_true
    Luhn.valid?(1230).should be_true
  end

  it "invalidates invalid numbers" do
    Luhn.valid?("1234567890123456").should be_false
    Luhn.valid?(1996009).should be_false
    Luhn.valid?(1231).should be_false
  end
end
