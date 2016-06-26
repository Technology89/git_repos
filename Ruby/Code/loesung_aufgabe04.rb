# a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
# b. geben Sie die Eigenschaft health des Objektes player1 aus
# c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
# d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert mit der Buchstabenlaenge des name -Attributes
# e. aendern Sie die to_s - Methode, zur Ausgabe des Score

class Player

	attr_reader :health
	attr_accessor :name
	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end
	def score
		@health + @name.length
	end
	def say_hello
		"Ich bin #{@name} mit einem Wert von #{@health} und einen Score von #{score}"
	end
	def blam
		@health += 10
		puts "#{@name} got blamed"
	end
	def woot
		@health -= 10
		puts "#{@name} got wooted"
	end
	def to_s
		say_hello
	end
end


player1 = Player.new("Hannelore", 30)
player2 = Player.new("Larry")

puts player1.health
puts player1

