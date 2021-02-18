require 'pry'
# Implement your object-oriented solution here!
class LargestPalindromeProduct
  attr_reader :answer

  def initialize
    @answer = largest_palindrome_product
  end

  def is_palindrome?(product)
    product.to_s == product.to_s.reverse
  end

  def largest_palindrome_product
    largest = 0
  
      (100..999).each do |x|
        (100..999).each do |y|
          product = x * y
          if (is_palindrome?(product) && product > largest)
            # what is self? a new object <LargestPalindromeProduct:0x00007fc3b79ada80>
            # x and y are 101 and 101, product os 10201
            # do we need to be able to call this info anywhere else?
            # can we make accessible these variables via instance methods?
            # binding.pry
            largest = product
          end
        end
      end
    largest
  end

end

print LargestPalindromeProduct.new.answer