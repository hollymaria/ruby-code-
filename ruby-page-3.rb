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


# Ideally want the array of strings used later to be used as hash keys, but at the moment prefer them to be symbols so I am going to create a new variable
(symbols) and store an empty array in it. Then I will use the .each method to iterate over the strings array.
For each s in strings I will use .to_sym to convert s to a symbol and use .push to add that new symbol to symbols.
Finally, the last line of code will print the symbols array.

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
# Add your code below!

movie_ratings.each_key { |title| puts title }




