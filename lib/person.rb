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

    def set_happiness=(score)
        @happiness = score
        
        # if @happiness < 11
        # @happiness = happiness
        # else 
        #     puts "out of range"
        # end 
    end  
        #@happiness.to_a(1..10)
end 