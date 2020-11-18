# your code goes here
require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(points)
        if points < 0
            @happiness = 0
        elsif points > 10
            @happiness = 10
        else
            @happiness = points
        end
    end
    def hygiene=(points)
        if points < 0
            @hygiene = 0
        elsif points > 10
            @hygiene = 10
        else
            @hygiene = points
        end
    end
    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end
    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end
    def get_paid(salary)
        @bank_account += salary
        p "all about the benjamins"
    end
    def take_bath
       self.hygiene=(@hygiene +4)
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene -3)
         p "♪ another one bites the dust ♫"
     end
     def call_friend(friend)
        #friend.happiness=(@happiness +3)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
        #binding.pry
     end
     def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
     end
end











