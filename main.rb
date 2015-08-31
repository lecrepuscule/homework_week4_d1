require_relative "animal"
require_relative "client"
require_relative "shelter"

rspca = Shelter.new("RSPCA")

def list_clients(shelter)
  shelter.clients.each{|k,v| puts "id: #{k} -- name: #{v.name}, age: #{v.age}, gender: #{v.gender}, with #{v.number_of_pets} pets"}
end

def list_animals(shelter)
  shelter.animals.each{|k,v| puts "id: #{k} -- name: #{v.name}, breed: #{v.breed}, age: #{v.age}, gender: #{v.gender}, loves #{v.favourite_toys}"}
end

def menu 
  # puts `clear`
  puts "*" * 52
  puts "Welcome to RSPCA!".center 50
  puts "*" * 52
  puts "1: Register a client"
  puts "2: List clients"
  puts "3: Update client info"
  puts "4: Take in an animal"
  puts "5: List animals in the shelter"
  puts "6: Release an animal"
  puts "Q/q: Quit"
  print "-->"
  gets.chomp
end

response = menu

while response.downcase != "q"
  case response

  when "1"
    client_data = {}
    puts "client name?"
    client_data[:name] = gets.chomp
    puts "client age?"
    client_data[:age] = gets.to_i
    puts "client's gender?"
    client_data[:gender] = gets.chomp
    puts "how many pets does the client own?"
    client_data[:number_of_pets] = gets.to_i

    puts rspca.register_client(client_data)

  when "2"
    puts "here are all the clients"
    list_clients(rspca)

  when "3"
    #update client info

  when "4"
    animal_data = {}
    puts "which client is giving up an animal?"
    list_clients(rspca)
    client_id = gets.to_i
    client = rspca.clients[client_id]

    puts "animal name?"
    animal_data[:name] = gets.chomp
    puts "animal breed?"
    animal_data[:breed] = gets.chomp
    puts "animal age?"
    animal_data[:age] = gets.to_i
    puts "animal's gender?"
    animal_data[:gender] = gets.chomp
    puts "favourite toys?"
    animal_data[:favourite_toys] = gets.chomp

    puts rspca.take_in_animal(animal_data)
    client.give_up_animal

  when "5"
    puts "here are all the animals in the shelter"
    list_animals(rspca)

  when "6"
    puts "which client is adopting?"
    list_clients(rspca)
    client_id = gets.to_i
    client = rspca.clients[client_id]

    puts "which animal is being adopted?"
    list_animals(rspca)
    animal_id = gets.to_i
    # animal = rspca.animals[animal_id]

    client.adopt_animal
    rspca.give_out_animal(animal_id)
  end

  response = menu
end