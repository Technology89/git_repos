3.times do |number|
	# puts number.to_s
end
lotto = []
7.times do
	lotto << rand(1..49)
end

numbers = (1..10).to_a
var = numbers.select do|n|
	n.even?
end
puts var

evens, odds = numbers.partition do |n|
	n.even?
end
puts evens
puts "-------------"
puts odds