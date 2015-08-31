require_relative "animal"
require_relative "client"
require_relative "shelter"

RSPCA = Shelter.new("RSPCA")

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

  when "2"

  when "3"

  when "4"
  when "5"
  when "6"

  end
  response = menu
end