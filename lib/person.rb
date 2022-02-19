# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= (new_happiness)
        if new_happiness < 0
            @happiness = 0
        elsif new_happiness > 10
            @happiness = 10
        else
            @happiness = new_happiness
        end
    end

    def hygiene= (new_hygiene)
        if new_hygiene < 0
            @hygiene = 0
        elsif new_hygiene > 10
            @hygiene = 10
        else
            @hygiene = new_hygiene
        end
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid (amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        hygiene = self.hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        hygiene = self.hygiene
        self.happiness += 2
        happiness = self.happiness
        "♪ another one bites the dust ♫"
    end

    def call_friend (person)
        self.happiness += 3
        happiness = self.happiness

        person.happiness += 3
        happiness = person.happiness

        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        if topic == "politics"
            self.happiness -= 2
            happiness = self.happiness

            person.happiness -= 2
            happiness = person.happiness
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            happiness = self.happiness

            person.happiness += 1
            happiness = person.happiness
            
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
        
end