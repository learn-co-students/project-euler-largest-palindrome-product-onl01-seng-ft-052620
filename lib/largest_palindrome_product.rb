# Implement your procedural solution here!
def largest_palindrome_product
    largest = 0

    (100..999).each do |i|
        (100..999).each do |j|
            product = i * j

            if (is_palindrome(product) && product > largest)
                largest = product
            end
        end
    end

    largest
end

def is_palindrome(input)
    input.to_s == input.to_s.reverse
end