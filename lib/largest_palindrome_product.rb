# Implement your procedural solution here!
require 'prime'

def largest_palindrome_product
topAnswer = 999 * 999
topArray = []
while topAnswer > 10001
    topSplit = topAnswer.to_s.split('')
    topReverse = topSplit.reverse
    if topSplit == topReverse && topAnswer.prime? == false
        i = 999
        while i > 100
            result = topAnswer / i 
            if topAnswer % i ==0 && result > 100 && result <1000
                topArray.push(topAnswer)
            end     
        i-=1
        end
    end
topAnswer-=1
end
return topArray.max
end