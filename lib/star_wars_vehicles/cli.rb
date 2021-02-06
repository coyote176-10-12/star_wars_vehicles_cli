class StarWarsVehicles::CLI
   
    def call
        puts "Welcome Starfigthers"
        puts "Enter list to pick a vehicle."
        puts "To exit, enter 'exit'"
        menu
    end

    def menu
        input = gets.strip

        if input == "list"
            vehicle_list
            menu
        elsif
            input == "exit"
            sign_off
        else
            wrong_data
            menu
        end

    end

    def vehicle_list
        puts "vehicle 1"
        puts "vehicle 2"
        puts "vehicle 3"
        puts ""
        puts ""
        puts "Which starfighter would you want more information?"
        input = gets.strip
        vehicle_selection(input)
    end

    def vehicle_selection(starfighter)
        puts "#{starfighter}"
        
    end

    def sign_off
        puts "Thank You, May the Force Be With You!"
    end

    def wrong_data
        puts "OPPS wrong entery"
    end

end