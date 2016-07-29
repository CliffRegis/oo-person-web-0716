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
    
	def happiness=(happy)
		if happy > 0
			if happy < 11
		       @happiness = happy
		    elsif
		     happy > 10
			@happiness = 10
		    end
		else 
			@happiness = 0

		end
		 	
	end
     def hygiene=(hygiene)
		if hygiene > 0
			if hygiene < 11
		       @hygiene = hygiene
		    elsif
		     hygiene > 10
			@hygiene = 10
		    end
		else 
			@hygiene = 0

		end
		 	
	end
	
	def clean?
		 if self.hygiene > 7
		 	true
		 else
		 	false
		 end
	end
	def happy?
		 if self.happiness > 7
		 	true
		 else
		 	false
		 end
	end
	def get_paid(salary)
      self.bank_account += salary
      return "all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end 
    def work_out
		self.hygiene -= 3
		self.happiness +=2
		return "♪ another one bites the dust ♫"
	end 
	def call_friend(friend)
		self.happiness +=3
		friend.happiness +=3
			#wow !!! that worked HOWW????
		 "Hi #{friend.name}! It's #{self.name}. How are you?"
	end
	def start_conversation(human, topic) 
		if topic == "politics"
			self.happiness -=2
		    human.happiness -=2
			return 'blah blah partisan blah lobbyist'
		elsif topic == "weather"
			self.happiness +=1
		    human.happiness +=1
			return 'blah blah sun blah rain'
		else 
			return 'blah blah blah blah blah'
		end
		
		
		
	end
    
end