require 'pry'
class Person 

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name 
        self.bank_account = 25
        self.happiness = 8
        self.hygiene = 8
    end

    def bank_account 
        @bank_account
    end
    
    def happiness
        @happiness.clamp(0, 10)
    end
    
    def hygiene
        @hygiene.clamp(0, 10)
    end
    
    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid(pay)
        self.bank_account = self.bank_account + pay 
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        self.hygiene > 10 ? self.hygiene = 10 : self.hygiene
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene =  self.hygiene - 3
        self.happiness =  self.happiness + 2
        self.hygiene < 0 ? self.hygiene = 0 : self.hygiene
        self.happiness > 10 ? self.happiness = 10 : self.happiness
        return '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness =  self.happiness + 3
        self.happiness > 10 ? self.happiness = 10 : self.happiness
        person.happiness = person.happiness + 3
        person.happiness > 10 ? person.happiness = 10 : person.happiness
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)



        case topic
        when "politics"
            self.happiness =  self.happiness - 2
            self.happiness < 0 ? self.happiness = 0 : self.happiness
            person.happiness = person.happiness - 2
            person.happiness < 0 ? person.happiness = 0 : person.happiness
            return 'blah blah partisan blah lobbyist'
        when "weather"
            self.happiness =  self.happiness + 1
            self.happiness > 10 ? self.happiness = 10 : self.happiness
            person.happiness = person.happiness + 1
            person.happiness > 10 ? person.happiness = 10 : person.happiness
            return 'blah blah sun blah rain'
        else return 'blah blah blah blah blah'
        end
        
    end

end

binding.pry


















