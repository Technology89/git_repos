# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
my_array = (15..20).to_a
puts "------------------------------------------------------"

# a. geben Sie diese Zahlen in einem Block aus
my_array.each do | value |
	puts value
end
puts "------------------------------------------------------"

# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
counter = 0
my_array.each do | value |	
	puts "Index: #{counter}	- Wert: #{value}"	
	counter += 1
end

puts "------------------------------------------------------"

my_array.each_with_index do | value, key |
	puts "Index: #{key}	- Wert: #{value}"	
end
puts "------------------------------------------------------"

# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 
my_hash = Hash.new
my_array.each do | value |
 my_hash[value] = rand(100..200)
end
puts my_hash
puts "------------------------------------------------------"

# d. Geben Sie diesen Hash anschließend etwa so aus: Index: 15 - Wert: 121
my_hash.each do | key, value |
	puts "Index: #{key} - Wert: #{value}"
end
puts "------------------------------------------------------"

# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
my_hash.each do | key, value |	
	if value > 150 
		puts "Index: #{key} - Wert: 151. WOW"
	else
		puts "Index: #{key} - Wert: #{value}"
	end
end
puts "------------------------------------------------------"

# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
my_array2 = []
my_array.each do | value |	
	puts "Wert: #{value}"
	my_array2 << value*value
end

puts my_array2
puts "------------------------------------------------------"

# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel
my_hash2 = Hash.new
my_array.each do | value |	
	puts "Wert: #{value}"
	my_hash2[value] = value*value
end

puts my_hash2
puts "------------------------------------------------------------------------------------------------------"

# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...
require 'prime'

array_primzahlen = Prime.first 10
array_primzahlen.each do | value |
	if value < 10
		puts "#{value} ist einstellig"
	elsif value >10 && value <100
		puts "#{value} ist zweistellig"
	else
		puts "#{value} hat mehr als zwei Stellen"
	end
end
puts "------------------------------------------------------"

# b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz.
# Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt
personen = { "vorname" => "Theo", "nachname" => "Sommer", "stadt" => "Lodz" }
personen.each do | key, value |
	puts "#{key}: #{value}"
end
puts "------------------------------------------------------"

# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash mit der Bezeichnung prims, 
# sodass die jeweilige Primzahl den Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'
require 'prime'

prims = Hash.new
array_primzahlen = Prime.first 10
array_primzahlen.each do | value |
	if value < 10
		stellen = "ist einstellig"
	elsif value >10 && value <100
		stellen = "ist zweistellig"
	else
		stellen = "hat mehr als zwei Stellen"
	end
	prims[value] = stellen
end
puts prims
puts "------------------------------------------------------"

# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..
puts "Einstellig: #{prims.select { | key, value | value == "ist einstellig"}.keys.join(",")}"
puts "Zweistellig: #{prims.select { | key, value | value == "ist zweistellig"}.keys.join(",")}"
puts "------------------------------------------------------"

# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......

adressen = [personen]
personen = { "vorname" => "Heinz", "nachname" => "Harald", "stadt" => "Sumte" }
adressen << personen
personen = { "vorname" => "Klaus", "nachname" => "Walter", "stadt" => "Humbold" }
adressen << personen

counter = 1
adressen.each do | value |
	puts "#{counter}.Person:"
	value.each do | key, value |
		puts "#{key.capitalize}: #{value}"
	end
	counter += 1
end
puts "------------------------------------------------------"

# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
krams = %w[Pflaume Bauschaum Auster]
# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
krams.each do | value |
	if value.downcase.include?("aus") == true
		puts value
	end
end
puts "------------------------------------------------------"

# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
puts krams.sort { | x, y | x.length <=> y.length }
puts "------------------------------------------------------"

# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert
krams_hash = Hash.new
krams.each do | value |
	krams_hash[value] = value.length
end
puts krams_hash
puts "------------------------------------------------------"

# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
lottozahlen = []
7.times do
	lottozahlen << rand(1..49)
end
lottozahlen.sort!
puts lottozahlen
puts "------------------------------------------------------"

# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}

lotto =  { "Peter" => [ 2, 22, 33, 11, 23, 32, 26 ], "Paul" => [ 17, 2, 13, 24, 45, 12, 19 ], "Mary" => [ 34, 12, 22, 26, 42, 3, 4 ] }
puts lotto
puts "------------------------------------------------------"
# 4. Vergleich:
# str_1 = "Programmieren, Federball, Whisky"
# str_2 = "Fussball, Bier, Programmieren"
# Die Ausgabe lautet:
# ergebnis = { :diff => ["Federball", "Whisky", "Fussball", "Bier"], :match => ["Programmieren"]}
