# a. definieren Sie eine Methode say_hello mit dem Argument name. Das Ergebnis des Aufrufs ist dann die Ausgabe: 'Ich bin Ludwig'
# b. rufen Sie die Methode mit verschiedenen namen auf
# c. puts soll nun aus der Methode entfernt werden
# d. aendern sie die Methode, so dass sie einen Statndarparmameter health entgegennimmt. Die Ausgabe lautet dann: 'Ich bin Ludwig mit einem Wert von 100'
# e. definieren Sie eine Methode time, die in der Methode say_hello aufgerufen wird und die Ausgabe folgendermaßen ergaenzt: 'Ich bin Ludwig mit einem Wert von 100 um 18:25'

def say_hello(name, health=100)
	"Ich bin #{name.capitalize} mit einem Alter von #{health} um #{time}"
end

def time
	Time.new.strftime("%R")
end

puts "Bitte geben sie ihren Namen ein"
name_input = gets.chomp
name_input.capitalize!

puts "Bitte geben sie ihr Alter ein"
alter_input = gets.chomp

puts say_hello("#{name_input}", "#{alter_input}")


