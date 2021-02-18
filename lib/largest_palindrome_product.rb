require 'pry'
# Implement your procedural solution here!
# what is a palindrome?
# is there meta code for that already?
# ignore that...
# what are all the three digit numbers?
# numbers 100 to 999 inclusive
# 

# evlaute if integer is palindrome
def is_palindrome?(input)
  # where a stringified num can be compared to itself fowawrds and reverse
  # same both ways is true  
  input.to_s == input.to_s.reverse
   ## REFACTOR THIS MONSTRONSITY 
end

def largest_palindrome_product
  #need to save the largest to variable
  #largest can be reset depending on the loop
  #do some 100..999 and for each one another loop 100..999 (N)^2
  largest = 0
  #for every 3 digit num multiply it by any other three digit number 
  (100..999).each do |x|
    # this seems slow for this question
    (100..999).each do |y|
      product = x * y
      if (is_palindrome?(product) && product > largest)
        # pass? largest is now the product till done exectuing maths
        largest = product
      end
    end
  end

  return largest
end

# print is_palindrome?(909)
# print largest_palindrome_product