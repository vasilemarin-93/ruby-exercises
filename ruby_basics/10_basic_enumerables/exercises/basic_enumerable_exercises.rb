# typed: strict

require 'sorbet-runtime'
extend T::Sig

sig { params(inventory_list: T::Hash[Symbol, Integer]).returns(T::Hash[Symbol, Integer]) }
def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each do |key, value|
    puts "#{key}, quantity: #{value}"
  end
end

extend T::Sig
sig { params(guesses: T::Array[String]).returns(T::Array[String]) }
def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index do |item, index|
    puts "Guess ##{index + 1} is #{item}"
  end
end

extend T::Sig
sig { params(numbers: T::Array[Integer]).returns(T::Array[Integer]) }
def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  numbers.map do |number|
    number.abs
  end
end

extend T::Sig
sig { params(inventory_list: T::Hash[Symbol, Integer]).returns(T::Hash[Symbol, Integer]) }
def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  inventory_list.select do |key, value|
    value < 4
  end.to_h
end

extend T::Sig
sig { params(word_list: T::Array[String]).returns(T::Hash[Symbol, Integer]) }
def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  word_list.reduce(Hash.new(0)) do |a, word|
    a[word] += word.length
    a
  end
end
