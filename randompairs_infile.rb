# build array of names from file and randomize it
# credit help from Sheri Dyson

def randomizepairs()
	names_array = []
	
	File.foreach( 'students.txt' ) do |line|
		names_array.push line.chomp
	end

	shuffled = names_array.shuffle
	
	rand_pair = rand(0..(names_array.length / 2 - 1))
	pairs = []

	shuffled.each_slice(2) do |pairup|
		if pairup.length == 2
			pairs << pairup
		else
			pairs[rand_pair] << pairup[0]
		end
	end

	pairs

end

p randomizepairs()