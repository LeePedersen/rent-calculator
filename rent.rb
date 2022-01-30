roommate_array = ["colin", "ty", "jay", "camille", "jesse", "mecie", "nic"]

rent_hash = Hash.new
total_people_paying = 0

roommate_array.each do |name|
  puts "enter #{name} rent"
  rent = gets.chomp.to_i
  rent_hash.store(name, rent)
  total_people_paying = total_people_paying + rent
end

total_rent = 2300
percentage = total_rent.to_f / total_people_paying.to_f

rent_hash.each { |key, value|
  puts "#{key} pays #{(value * percentage)}"
}
