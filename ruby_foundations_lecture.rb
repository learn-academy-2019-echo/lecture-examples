# ----------------RUBY HASHES AND LOOPS 10/21/2019

# HASHES - dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type. Hashes enumerate their values in the order that the corresponding keys were inserted.
# The => is called a rocket

lunch_order1 = { tacos: 10, type: "Carnitas"}
# Access the value by the hash
# p lunch_order1[:tacos]

# With a hash rocket
lunch_order2 = { 'tacos' => 10, 'type' => "Carnitas" }
# p lunch_order2['tacos']

# With a Ruby symbol
lunch_order3 = { :tacos => 10, :type => "Carnitas" }
# p lunch_order3[:tacos]
# p lunch_order3[:type]


# A Hash can also be created with Hash.new

burger_order = Hash.new
# p burger_order
burger_order['Double Cheese Burger'] = 3
# p burger_order

burger_order['Veggie Burger'] = 3
# p burger_order



# LOOPS - DO/END
# times

5.times do
  # p 'times loop'
end


loop_num = 10
loop_num.times do
  # p 'hello'
end

# while
i = 0
while i <= 5 do
  # p i
  i+= 1
end


a = [3, 4, 17]
# the || are block code parameters
a.each do |element|
  # p element * 3
end


# MAP - the curly braces can take the place of the DO/END block

ex_array = [8, 9, 15, 3, 12, 13]

# p ex_array.map{ |i| i * 3 }
# p ex_array
# p ex_array.map!{ |i| i * 3 }
# p ex_array


def mult_number arr
  mult3 = arr.map do |value|
    value * 3
  end
end
# p mult_number ex_array



arr1 = ["Louise", "Gene", "Tina"]

def add_name arr
  arr.map do |value|
    "#{value} Belcher"
  end
end
# p add_name arr1



new_nums = [8, 9, 15, 3, 12, 13]

def odd_even arr
  arr.map do |value|
    if value % 2 == 0
      "even"
    else
      "odd"
    end
  end
end
# p odd_even new_nums


# map is not a mutator
# p new_nums


# use the ! to save changes
def odd_even arr
  arr.map do |value|
    if value % 2 == 0
      "even"
    else
      "odd"
    end
  end
end
# p odd_even new_nums
# p new_nums






# -------------------EXTRA EXAMPLES

# Write a method that takes in an array and returns only the odd numbers
# The .select method will evaluate to a boolean value

nums = [8, 9, 15, 3, 12, 13, 3]
# expected output = [9, 15, 3, 13]

def odd_only1 arr
  arr.select do |value|
    value % 2 != 0
  end
end
# p odd_only1 nums

def odd_only2 arr
  arr.reject do |value|
    value % 2 == 0
  end
end
# p odd_only2 nums


# Given an array of numbers, write a function that returns an array that has all duplicate elements removed and is sorted from least to greatest value

# Sorting
# .sort and .sort!

numArray = [3, 5, 6, 4, 6, 7, 6, 6, 4, 3]
def num_sorter array
  array.uniq.sort
end
# p num_sorter numArray


# Write a method that capitalizes the first letter of each word in a sentence

my_sentence = 'hello there, how are you?'
# expected output = "Hello There, How Are You?"

def cap_first sentence
  mapArr = sentence.split.map do
    |value| value.capitalize
  end
    mapArr.join(" ")
end
# p cap_first my_sentence

# puts my_sentence.split.map(&:capitalize).join(' ')


# Write a method that removes the vowels from a sentence

no_vowels = "I have no vowels"
# expected output = " hv n vwls"

def remove_vowel sentence
  sentence.downcase.delete 'aeiou'
end
# p remove_vowel no_vowels



# Extra fun stuff - spaceship operater
# Split an array into two arrays, one less than 5, one greater than 5

# returns a hash of all the values that are less than, equal to, or greater than the target value

nums = Array(1..10)
target = 5
sorter = nums.group_by do
  |n|n<=>target
end
# p sorter
# -->> {-1=>[1, 2, 3, 4], 0=>[5], 1=>[6, 7, 8, 9, 10]}

# --or-- to access particular arrays within the hash
nums = Array(1..10)
target = 5
sorter = nums.group_by do
  |n|(n<=>target)
end
# p sorter[-1]
# -->> {-1=>[1, 2, 3, 4], 0=>[5], 1=>[6, 7, 8, 9, 10]}

# p nums.sort do |a,b|
#   b <=> a
# end
# --or--
# p nums.sort { |a,b| b <=> a}

sortedsentence = no_vowels.split(" ").sort_by do |word| word.length end
# p sortedsentence.join(" ")

# Populates an array with 'a' -->> 'g'
letters = Array('a'..'g')
# Populates an array with 1 -->> 10
nums = Array(1..10)
