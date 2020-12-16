require "pry"

class Person
    attr_accessor :bank_account  
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(number)
        if number > 10
            @happiness = 10
        elsif number < 0
            @happiness = 0
        else
            @happiness = number
        end
    end  

    def hygiene=(number)
        if number > 10
            @hygiene = 10
        elsif number < 0
            @hygiene = 0
        else
            @hygiene = number
        end
    end      

    def happy?
        if self.happiness > 7
            true
        else self.happiness <= 7 
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else self.hygiene <= 7 
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

# class Person
#     attr_accessor :bank_account  
#     attr_reader :name, :happiness, :hygiene

#     def initialize(name)
#         @name = name
#         @bank_account = 25
#         @happiness = 8
#         @hygiene = 8
#     end
#     def happiness=(number)
#         if number > 10
#             @happiness = 10
#             puts @happiness
#         elsif number < 0
#             @happiness = 0
#             puts @happiness
#         else
#             @happiness = number
#             puts @happiness
#         end
#     end 
    
# end

# cole = Person.new("COLE")
# cole.happiness = 12

# cole.happiness += 12
# @happiness
# cole.happiness

