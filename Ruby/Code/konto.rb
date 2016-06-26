class Kunde
	attr_accessor :name, :gehalt
	attr_writer :adresse

	def initialize(pname)
		@name = pname
		@kredite = []
	end
	def to_s
	 @name
	end
	def set_kredit(pkredit)
		@kredite << pkredit
	end
	def show_kredite
		puts "#{@name}, #{@adresse} hat folgende Kredite:"
		counter = 1
		@kredite.each do | var |
			puts "Kredit #{counter}: #{var.wert}"
			counter += 1
		end
		@kredite.each.with_index(1) do |k, i|
			puts "Kredit #{i}: #{k.wert}"
		end
		
	end	
end

class Kredit
	attr_accessor :wert
	def initialize(pwert)
		@wert = pwert
	end
end

kredit_1 = Kredit.new(5000)
kredit_2 = Kredit.new(2000)


kunde1 = Kunde.new("Theo Sommer")
kunde1.name = "Theo Sonnenschein"
kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"
kunde1.set_kredit(kredit_1)
kunde1.set_kredit(kredit_2)

kunde1.show_kredite