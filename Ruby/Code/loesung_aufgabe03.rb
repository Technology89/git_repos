# a. erstellen Sie eine Klasse mit der Bezeichnung Player
# b. erstellen Sie ein Objekt player1 der Klasse 
# c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat und aus diesen Werten die Instanzvariablen @name und @health initialisiert
# d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
# e. setzen Sie fuer health einen Standardwert 100
# f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat
# g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass puts player1.say_hello die Ausgabe ergibt
# h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health umd 10 hochsetzt, bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.
# i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden soll, also puts players erfolgt.
class Player
	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end
	def input
		puts "Bitte geben sie 'blam' or 'woot' ein!"
		eingabe = gets.chomp
		if eingabe == "blam"
			blam
		elsif eingabe == "woot"
			woot
		else
			puts "Falsche Eingabe!"
			input
		end
	end
	def say_hello
		"Ich bin #{@name} mit einem Wert von #{@health}"
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

puts "Bitte Namen eingeben!"
in_name = gets.chomp
player1 = Player.new("#{in_name}", 30)
player2 = Player.new("Larry")

puts player1 
player1.input
puts player1

puts player2
player2.input
puts player2
