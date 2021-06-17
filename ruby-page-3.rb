# ruby-code-page-3

# How to use symbol in ruby

my_first_symbol = :my_symbol

=begin
Symbols pop up in a lot of places in Ruby
They are mainly used either as hash keys or for referencing method names

Symbols make good hash keys for a few reasons:

1) They’re immutable meaning they can’t be changed once they’re created
2) Only one copy of any symbol exists at a given time, so they save memory
3) Symbol-as-keys are faster than strings-as-keys because of the above two reasons
=end

# Another example of symbol hash 
symbol_hash = {
  :one => 1,
  :two => 2,    # Fill in these two blanks!
  :three => 3,
}


=begin
Ideally want the array of strings used later to be used as hash keys, but at the moment prefer them to be symbols so I am going to create a new variable
(symbols) and store an empty array in it. Then I will use the .each method to iterate over the strings array.
For each s in strings I will use .to_sym to convert s to a symbol and use .push to add that new symbol to symbols.
Finally, the last line of code will print the symbols array.
=end

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s| 
 symbols.push(s.to_sym)
end 
print symbols

# Doing exactly the same as the above code but using .intern instead of .to_sym... they both work the same when converting strings to symbols

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s| 
 symbols.push(s.intern) # Here is where I changed it to .intern
end 
print symbols


# The cute => also known as the hash rocket because it looks like a tiny rocket... I will use this symbol to create two key value/pairs inside my hash

movies = {
  :children => "Raya",
  :teenagers => "Meangirls",
  :adults => "Handmaid's Tail",

}


# The above code isn't relevant now because the => symbol is not needed in the latest version of Ruby, instead I can swap the colons round so they are AFTER the value and 
remove the symbol like so 

movies = {
  children: "Raya",
  teenagers: "Meangirls",
  adults: "Handmaid's Tail",

}

# If I wanted to filter a hash for values that meet certain criteria then I can use the .select funciton 

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select { |name, rating| rating > 3 }

# Using the same code above, minus the last line of code, I am printing out all of the movie titles by typing 'puts title in the .each key function

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

movie_ratings.each_key { |title| puts title }

# PROJECT - ALBUM RATING PROGRAM

movies = {
  delerium: 3,
  crazy: 4,
  rasputin: 1
}

puts "What would you like to do?"
puts "Type 'add' to add an album."
puts "Type 'update' to update an album."
puts "Type 'display' to display all albums."
puts "Type 'delete' to delete an album."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What album do you want to add?"
  title = gets.chomp
  if albums[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    albums[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That album already exists! Its rating is #{albums[title.to_sym]}."
  end
when 'update'
  puts "What album do you want to update?"
  title = gets.chomp
  if albums[title.to_sym].nil?
    puts "Album not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    albums[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  albums.each do |album, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What album do you want to delete?"
  title = gets.chomp
  if albums[title.to_sym].nil?
    puts "Album not found!"
  else
    albums.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I don't understand."
end

-------------------------------------------------
# Using the IF statement and boolean

puts "This is true" if true

# I can do the same as the above but using the 'unless' statement

puts "This statement is true" unless false

# The ternary conditional expression (known as ternary because it take 3 arguments - boolean, true, false

print true ? "true" : "false"

# Using the 'case' statement which is easier than using the if/elsif statement sometimes, if you have loads of conditions to check

puts "Hello there!"
greeting = gets.chomp

# adding case statements
case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end

# Using the conditional statement || symbol 
    
favorite_language ||= "Ruby"
puts favorite_language
    
# short circuit evaluation
    
def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "true && false"
puts a && b


# Using the .upto method to go from L to P
    
"L".upto("P") { |letter| puts letter }
    
=begin
You can call .push on an object but not a symbol, so if I called .push onto an object, it would return true but if I called .push onto a symbol, it would return false
I'm going to use the .next method too to return the integer immediately following the integer it’s called on for example 4.next will return 5 or 2 would return 3
=end
    
age = 25

age.respond_to?(:next)

    
 # Using the concatenation operator '<<' which is also known as the shovel. This is used to add an element to the end of an array (works on strings and integers)
    
alphabet = ["a", "b", "c"]
alphabet<<("d") # instead of .push, i used <<

caption = "A giraffe surrounded by "
caption <<= "weezards!" # used << here too instead of +
    
# Using the 'when' condition instead of if else statements
    
puts "What's your favorite language?"
language = gets.chomp

case language
when "Ruby"
  puts "Ruby is great for web apps!"
when "Python"
  puts "Python is great for science."
when "JavaScript"
  puts "JavaScript makes websites awesome."
when "HTML"
  puts "HTML is what websites are made of!"
when  "CSS"
  puts "CSS makes websites pretty."
else
  puts "I don't know that language!"
end
    
# PROCS, BLOCKS and LAMBDAS
    
# Using the .times function to puts i'm a block 5 times
    
5.times do 
  puts "I'm a block!"
end
    
    
# Like procs, lambdas are objects 
    
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })
    
# Lamda syntax
    
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda {|x| x.to_sym} 
# Created a new variable called symbolize and stored a lambda that takes one parameter and calls .to_sym on that parameter
# Then used symbolize with the .collect method to convert the items in strings to symbols!

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols
    
    

# Lambda vs procs
# In this code, iron man wins because lambda goes back into the method after being called
# But batman also wins because it returns immeadiately without returning the the batman_ironman_proc method
    
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda
 
    
# I have created a lambda symbol_filter that takes one parameter and checks to see if that parameter .is_a? Symbol
# Then I created a new variable called symbols, and stored the result of calling my_array.select and passing it my lambda.
# I then typed puts symbols at the end of the file in order to see the final contents of the array
    
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# This is where I added the code
symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

puts symbols
    

