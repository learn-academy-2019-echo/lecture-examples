# ----------------INTRO TO RUBY 10/21/2019

# Ruby was created by Yukihiro Matsumoto (more affectionately known as Matz) in Japan starting in 1993. Matz essentially kept Ruby to himself until 1995 when he released it to the public. It gained popularity with the release of Ruby on Rails in 2004/5.

# MINASWAN - Matz is nice and so we are nice

# Object-oriented - an object is an instance of a class, the class defines the properties and behavior of an object (objects know things and they can do things)
# Implicit - complied at execution just like JS, source code has to be complied at execution so is slower and you can see the source code
# Dynamically typed - change the datatype if you reassign a variable
# Scripting language - a non-compiled language designed for integrating and interacting with other programming languages

# The goal of ruby was a programming language that feels natural for humans to read

# Commenting uses a #

# How to run ruby files:
# - Save the file with the extension .rb
# - In terminal (for Mac) ruby file_name.rb
# - Run irb, to return to terminal type exit
# - The basic AWS environment (ubuntu) will run irb and ruby file_name.rb


# OUTPUT
# puts (puts string) - adds a new line after executing (similar to console.log in JS)
# print - doesn’t add a new line
# p - returns the exact input (similar to console.log in JS but with the datatype visuals)

# puts 'Enter Your Name'
# print 'Enter Your Name'
# p 'Enter Your Name'

# DATATYPES - everything is an object/class including individual datatypes

# Intergers - there are 5 basic arithmatic operators

# p 8 + 4   addition
# p 8 - 4   subtraction
# p 8 * 4   multiplication
# p 8 / 4   division
# p 8 % 4   modulo

# The basic math functions are just like JS, with the exception of floats
# If you want a float to be returned, you must start with at least one float

# p 5/4
# p 5.0/2
# p 5/2.0
# p 22/7.0
# p 3/0

# p 3/0 ---> will throw an error
# p 0.0/0 ---> will return NaN
# p 3.0/0 ---> will return Infinity


# Boolean - no type coersion, the only objects that evluates to falsey are nil and false, everything else is truthy

# comparison operators: == != < > <= >=
# logical operators: && || !

# p 7 == 7
# p 7 == '7'

# Strings - Single quotes for most uses, except string interpolation "#{}"

# Arrays - look the same as JS


# METHODS - everything in ruby is an object, therefore everything is an instance of a class, every action is a method, (a function that belongs to a class)
# Call .methods to see all the methods available to that class
# Implicit return - ruby will automatically return the last line of every method without the word return, but you can still use return if you want to be more specific

# String Methods, using dot notation, methods can be chained

# p 'echo19'.capitalize
# p 'ECHO19'.downcase
# p 'echo19'.reverse
# p 'Echo19 ' * 3
# p 'echo19'.reverse.upcase
# p 'echo19'.size


# VARIABLES - Ruby uses snake_casing
my_string = 'hello'
num = 5793
my_num = '4920'

# p MYCONST = 'hi'
# p MYCONST = 'hello'

# parallel assignment
x, y, z = 1, 2, 3
# p x, y, z

# To check the datatype of a variable use the method .class

# p my_string.class == String
# p num.class
# p my_num.class

# Change the datatype .to_s (to string) and .to_i (to interger)

# p num.to_s
# p my_num.to_i

# num.to_s(a number 2-36) will change to a base number, 2=bianary, 16=hexadecimal

# p num.to_s(2).to_i
# p 479453.to_s(16)

# Substrings can be accessed with []
my_string = "hello"
# p my_string[1..3]

# Ruby counts the index from 0 up (left to right), but also from 0 to negative numbers (right to left)

# Array Methods
# Most methods won’t permanently change the variable, add a ! after the method to make it a mutator

nums = [3, 15, 17, 4, 10, 5]

# p nums.length
# p nums.size
# p nums.first
# p nums.last
# p nums.include? 3

# p nums.reverse
# p nums
# p nums.reverse!
# p nums

# p nums[2]
# p nums[6]
# p nums[88] = 7
# # Starts at the last index and goes backwards
# p nums[-2]
# p nums[2] = 100
# p nums


# Mutator methods/operators:

# Shovel operator <<  an array method, same as .push


# p [1, 2, 3] << nums
# p newArr = [1, 2, 3] << nums
# p newArr
# p nums << 55
# p newArr
# p nums << 99
# p nums
# p [] << 'hello'
# Select multiple values from an array using values_at
# p nums.values_at 2, 3, 4

# p nums[88] = 16
# p nums
#
# p nums.pop
# p nums


# INPUT - getting user input in terminal/irb
# gets is a prompt for user input in terminal
# chomp pulls empty characters off a string

# p 'Enter Your Name'
# p your_name = gets.chomp
# p "Hey #{your_name.capitalize}. How's life?"


# CONDITIONALS - IF/ELSE/END

# p 'Enter your Age'
# your_age = gets.chomp.to_i
# p your_age.class
#
# if your_age >= 21
#   p "#{your_age} is old enough to drink."
# else
#   p "#{your_age} is not old enought to drink"
# end

# Terinary syntax is the same as JS

# p your_age >= 21 ? "#{your_age} is old enough" : "#{your_age} is not old enough"

# METHODS WITH PARAMETERS - DEF/END (Ruby keywords)

def mult num1, num2
  num1 * num2
end
# p mult 3, 7


# It is best practice to use parentheses on methods that pass multiple parameters

def mult(num1, num2)
  num1 * num2
end
# p mult(3, 7)


#
# p 'Enter Your Name'
# your_name = gets.chomp
# p 'Enter your Age'
# your_age = gets.chomp.to_i


def drinking_age(name, age)
  if age >= 21
    "Hi #{name}. #{age} is old enough to drink"
  else
    "Hi #{name}. #{age} is not old enought to drink"
  end
end
# p drinking_age(your_name, your_age)


# IF/ELSIF/ELSE/END
#
# p "Enter number"
# number1 = gets.chomp.to_i
# p "Enter another number"
# number2 = gets.chomp.to_i


def greater(num1, num2)
  if num1 > num2
    "#{num1} is greater"
  elsif num1 < num2
    "#{num2} is greater"
  else
    "#{num1} and #{num2} are equal"
  end
end
# p greater(number1, number2)


# UNLESS - part of the conditional family, comes from the intuitive language aspect of Ruby
# Easy to read but not super practical or much used

check_num = 6

# unless check_num > 5
#   p 'this'
# else
#   p 'that'
# end
