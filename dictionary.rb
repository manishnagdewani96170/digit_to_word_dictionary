#!/bin/ruby
require 'date'
require 'byebug'
class NumberToWordMap
  def read_from_dictionary
    dictionary = {}
    for i in (1..30)
      dictionary[i] = []
    end
    File.foreach("dictionary.txt") do |word|
      dictionary[word.length] << word.chop.to_s.downcase
    end
    dictionary
  end


  def format_string(number)
    arr = {
      '2' => ['a', 'b', 'c'],
      '3' => ['d', 'e', 'f'],
      '4' => ['g', 'h', 'i'],
      '5' => ['j', 'k', 'l'],
      '6' => ['m', 'n', 'o'],
      '7' => ['p', 'q', 'r', 's'],
      '8' => ['t', 'u', 'v'],
      '9' => ['w', 'x', 'y', 'z']
    }
    number.chars.map{|digit| arr[digit]}
  end

  def manipulate_result(number)
    time_start = Time.now()
    return [] if number.nil? || number.length != 10 || number.split('').select{|a|(a.to_i == 0 || a.to_i == 1)}.length > 0
    dictionary, keys = {}, []
    dictionary = read_from_dictionary
    keys = format_string(number)
    results = {}
    final_result = []
    total_number = keys.length - 1 # total numbers
  end
end

n = NumberToWordMap.new
result = n.manipulate_result("6686787825")
print result
result = n.manipulate_result("2282668687")
print result