# takes students and creates work teams
# if there is an odd number of students, one team has 3 students

def random_pairs()

	pair_ups = []

	namelist = ["Allen", "Brian", "Cummie", "Dover", "Edwin", "FrankM",

		"FrankC", "George", "Jayvon", "John", "Khalifa", "Lee", "Lisa",

		"Matt", "Max", "Mike", "Pat", "Patrick", "Sheri", "Takhir", "Teela"]

	random_num = rand(0..9)

	shuffled_list = namelist.shuffle.each_slice(2)

	shuffled_list.each do |pairs|

		if pairs.length == 2

			pair_ups.push(pairs)

		else

			pair_ups[random_num].push(pairs[0])

		end

	end

	return pair_ups

# puts pair_ups.inspect

end

# display results on screen

pair_ups = random_pairs()

team_count = 1

pair_ups.each do |name1, name2, name3| 

	if name3.nil?

		puts "Team #{team_count} members are #{name1} and #{name2}."

	else

		puts "Team #{team_count} members are #{name1}, #{name2}, and #{name3}."

	end

	team_count += 1

end