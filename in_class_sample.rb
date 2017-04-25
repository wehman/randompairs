# takes a list of student names and creates work pairs
# takes an odd number of students and creates a group with 3 students

def random_pair()

  names = ["Allen", "Brian", "Cummie", "Dover", "Edwin", "FrankM",

    "FrankC", "George", "Jayvon", "John", "Khalifa", "Lee", "Lisa",

    "Matt", "Max", "Mike", "Pat", "Patrick", "Sheri", "Takhir", "Teela"]

  my_array = []

  array_of_items_to_be_paired = names.shuffle.each_slice(2)

  array_of_items_to_be_paired.each do |pairs|

    if pairs.length == 2

      my_array.push(pairs)

    else

      my_array.last.push(pairs[0])

    end

  end

  my_array

end

paired_array = random_pair()

puts paired_array.inspect