def is_prime?(num)
    return false if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? } 
end

puts "Enter numeric value: "
result = gets.chomp

while result != ""
    begin
        result = Integer(result)
        
        until result<100
            puts "Please enter a number less than 100: "
            result = Integer(gets)
        end

        break
    
    rescue ArgumentError, TypeError
        puts "Please enter a number: "    
        result = gets.chomp

    end
end

for i in 1..result
    if is_prime?(i) 
        puts i
    end
    i=i+1
end