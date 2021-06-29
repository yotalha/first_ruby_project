dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_name(some_hash)
  some_hash.keys
end


def get_area_code(some_hash, key)
  some_hash[key]
end


while true
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  check = gets.chomp.downcase
  break if check != "y"
  puts "which city area code u want?"
  puts get_city_name(dial_book)
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "the area code for #{prompt} is #{get_area_code(dial_book, prompt)}" 
  else
    puts "you have entered invalid city name that is not in the dictionary"
  end
end

