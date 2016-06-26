# a. legen Sie zur uebung auf der irb ein Array jahreszeiten mit den Elementen: Sommer, Herbst, Winter an; sowohl in der Langform, als auch der Kurzform
# b. lassen Sie ausgeben wieviele Elemente das Array enthaelt, welche Jahreszeit die zweite im Array ist
# c. fuegen Sie das Element fruehjahr hinzu
# d. entfernen Sie das Element wieder aus dem Array
# e. ermitteln Sie mit Hilfe von ri, wie join Ihnen bei einer folgendermassen formatierten Ausgabe behilflich sein kann: Sommer und Herbst und Winter
# f. notieren Sie den Befehl
# g. ermitteln Sie den Befehl mit dem Sie die Positionen der Elemente des Arrays nach einem Zufallsprinzip anordnen koennen
# h. packen Sie Ihre drei Player aus dem Projekt in ein Array
# i. Geben Sie Player mit einer Iteration über das Array aus. Beginnen Sie mit einer Zeile, in der sie die Anzahl der Mitspieler notieren

	# jahreszeiten = ["Sommer", "Herbst", "Winter"]
		# => ["Sommer", "Herbst", "Winter"] 
	# jahreszeiten = %w(Sommer Herbst Winter)
		# => ["Sommer", "Herbst", "Winter"] 
	# jahreszeiten.count
		# => 3 
	# jahreszeiten[1]
		# => "Herbst" 
	# jahreszeiten.push("Fruehjahr")
		# => ["Sommer", "Herbst", "Winter", "Fruehjahr"] 
	# jahreszeiten.delete("Fruehjahr")
		# => "Fruehjahr" 
	# jahreszeiten.join(" und ")
		# => "Sommer und Herbst und Winter" 
	# jahreszeiten.shuffle
		# => ["Herbst", "Sommer", "Winter"] 

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
player3 = Player.new("Harald")

players = [player1, player2, player3]

puts "Anzahl der Spieler: #{players.count}"
players.each do |row|
	puts row
end

