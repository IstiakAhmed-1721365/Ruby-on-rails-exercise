class Garage
    SLOTS = 100
    H = Hash.new
    Space = Hash.new
    Space[:left]=100

    def initialize name,slot 
        @vehi_name=name
        @vehi_slot=slot
        
    end

    #def name 
    #    puts "Name of the object is #{@vehi_name}" 
    #end

    def in 
        begin
            if Space[:left] < @vehi_slot
                 raise ArgumentError.new("Error: Not enough space in garage!")
            end
            if H.has_key?(@vehi_name)
                H[@vehi_name] += 1 
                Space[:left] = Space[:left]-(@vehi_slot)
                else H[@vehi_name] = 1 
                Space[:left] = Space[:left]-(@vehi_slot)
            end
        end       
    end

    def self.total_vehicle
        puts "The list for total vehicles are #{H}"
    end

    def self.slot_left
                                      
       puts "Slots left in Garage is #{Space[:left]}"
       
    end 
end

car = Garage.new "car", 4
bike = Garage.new "bike", 2

car.in
bike.in
bike.in


#puts car.name
puts Garage.total_vehicle
puts Garage.slot_left