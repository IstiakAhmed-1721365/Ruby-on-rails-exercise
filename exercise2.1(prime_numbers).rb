def is_prime?(num)
    return false if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? } 
  end

puts "enter an array: "
h = gets
x = h.split.map(&:to_i)
y = []
j = 0

for i in 0...x.length
    if is_prime?(x[i])
        y[j] = x[i]
        i=i+1
        j+=1
    end
end 

puts "There are #{y.length} prime numbers in total in the array."
print "The prime numbers are #{y}"