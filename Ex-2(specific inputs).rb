puts "Enter from the keyboard to select the following animals: cat, dog, fish, bird"
 
input = gets.chomp

until input == "cat" || input == "dog" || input == "bird" || input == "fish"
    puts "Please enter one of the values cat, dog, fish, bird"
    input = gets.chomp
end
    case input
        when "cat"
            puts "Action: go"
        when "dog"
            puts "Action: go"
        when "fish"
            puts "Action: swim"
        when "bird"
            puts "Action: fly"
        
    end


