require File.expand_path('../../../spec_helper', __FILE__)
require 'date'

ruby_version_is "1.9" do

  describe "#to_time" do

    it "returns local proleptic Gregorian midnight for Julian date" do
      t = Date.new(1582, 10, 4).to_time
      t.utc?.should be_false
      t.year.should  == 1582
      t.month.should ==   10
      t.day.should   ==   14
      t.hour.should  ==    0
      t.min.should   ==    0
      t.sec.should   ==    0
      t.nsec.should  ==    0
    end

    it "returns local proleptic Gregorian midnight for post-reform Julian" do
      t = Date.new(1582, 10, 5, Date::JULIAN).to_time
      t.utc?.should be_false
      t.year.should  == 1582
      t.month.should ==   10
      t.day.should   ==   15
      t.hour.should  ==    0
      t.min.should   ==    0
      t.sec.should   ==    0
      t.nsec.should  ==    0
    end

    it "returns local proleptic Gregorian midnight for proleptic Gregorian" do
      t = Date.new(1582, 10, 5, Date::GREGORIAN).to_time
      t.utc?.should be_false
      t.year.should  == 1582
      t.month.should ==   10
      t.day.should   ==    5
      t.hour.should  ==    0
      t.min.should   ==    0
      t.sec.should   ==    0
      t.nsec.should  ==    0
    end

    it "returns local Gregorian midnight for Gregorian date" do
      t = Date.new(1582, 10, 15).to_time
      t.utc?.should be_false
      t.year.should  == 1582
      t.month.should ==   10
      t.day.should   ==   15
      t.hour.should  ==    0
      t.min.should   ==    0
      t.sec.should   ==    0
      t.nsec.should  ==    0
    end

  end

end

