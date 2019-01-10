require 'minitest/spec'
require "minitest/autorun"
require File.expand_path('./dictionary', File.dirname(__FILE__))

describe "dictionary_spec" do
  it "phone_number has 10 digits" do
    result = NumberToWordMap.new.manipulate_result("6686787825")
    assert_equal(true, result.count > 0)
  end

  it "phone_number has 10 digits" do
    result = NumberToWordMap.new.manipulate_result("2282668687")
    assert_equal(true, result.count > 0)
  end

  it "phone number has less than 10 digits" do
    assert_equal([], NumberToWordMap.new.manipulate_result("87878787"))
  end

  it "phone number contains 0 or 1" do
    assert_equal([], NumberToWordMap.new.manipulate_result("9090909012"))
  end
end
