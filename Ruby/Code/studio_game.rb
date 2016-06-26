# Lösung Thomas
# name1 = "larry"
# name2 = "curly"
# name3 = "moe"
# health1 = 60
# health2 = 120
# puts "#{name1.capitalize}'s health is #{health1}"
# health1 = health1 * 3
# puts health1
# health1 = health1 / 9
# puts health1.to_i
# puts health1.to_f
# puts "Players:\n  #{name1}\n  #{name2}\n  #{name3}"
# puts "#{name1} has a Health of #{health1}.\n#{name2} has a Health of #{health2}.\n"
# var1 = "#{name3} has a health of 100."
# puts "#{var1.center(50 , '*')}\n" *2 + "Shemp......................... 90 health\n" *2
# puts "Players:\n  #{name1}\n  #{name2}\n  #{name3}\nThe game started on Thursday 08/02/2012 at 11:42AM"

name1 = "larry"
health1 = 60

puts "#{name1.capitalize} has a health of #{health1}"

puts "#{name1.capitalize} has a health of #{health1}".center(40, '*')

puts "#{name1.capitalize.ljust(30, '.')} #{health1} health"