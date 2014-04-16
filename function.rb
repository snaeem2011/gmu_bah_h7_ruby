# Return a reversed copy of the array
def reverse(an_array)
   an_array.reverse
end

def letter?( character )
  character =~ /[[:alpha:]]/
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)

   letter_frequency = { 'a' => 0, 'b' => 0, 'c' => 0, 'd' => 0, 'e' => 0,
                        'f' => 0, 'g' => 0, 'h' => 0, 'i' => 0, 'j' => 0,
                        'k' => 0, 'l' => 0, 'm' => 0, 'n' => 0, 'o' => 0,
                        'p' => 0, 'q' => 0, 'r' => 0, 's' => 0, 't' => 0,
                        'u' => 0, 'v' => 0, 'w' => 0, 'x' => 0, 'y' => 0,
                        'z' => 0 }

   a_string.downcase.each_char do |c|

     if letter?( c )

=begin
puts ( "hash index is " + c )
=end

         letter_frequency[c] += 1
     end


   end

   return letter_frequency

end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
#
def sum_only_numbers(an_array)

   sum = 0
   an_array.each do |item|
      if item.is_a? Numeric

=begin
puts " #{item} is an integer"
=end
         sum += item
      end
   end

   return sum

end


# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz

  array = Array.new(100)

  for i in 1..100

    if (i % 3 == 0) && (i % 5 == 0)
       array[i-1] = "FizzBuzz"
    elsif ( i % 3 == 0 )
       array[i-1] = "Fizz"
    elsif ( i % 5 == 0 )
       array[i-1] = "Buzz"
    else
       array[i-1] = i
    end

  end

   return array
end

# Uncomment each of these to test your functions
 puts reverse([3,6,'dog']).inspect
 puts histogram('The Quick brown fox').inspect
 puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
 puts fizzbuzz.join("\n")