# Implement your object-oriented solution here!
class LargestPalindromeProduct
    attr_accessor :answer, :num_1, :num_2

    def initialize
        @answer = largest_palindrome_product
        @num_1 = 0
        @num_2 = 0
    end

    def is_palindrome(input)
        input.to_s == input.to_s.reverse
    end

    def largest_palindrome_product
        largest = 0
    
        (100..999).each do |i|
            (100..999).each do |j|
                product = i * j
    
                if (is_palindrome(product) && product > largest)
                    self.num_1, self.num_2 = i, j
                    largest = product
                end
            end
        end
    
        largest
    end
    
end