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
end
  