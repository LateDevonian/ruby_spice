user_input = 0
until [1,2].include? user_input do
    puts "Please enter a 1 or a 2.>"
    user_input = gets.chomp.to_i
end
if user_input == 1
    puts "One response."
else
    puts "Second response."
end

while user_input = gets.chomp # loop while getting user input
  case user_input
  when "1"
    puts "First response"
    break # make sure to break so you don't ask again
  when "2"
    puts "Second response"
    break # and again
  else
    puts "Please select either 1 or 2"
    print prompt # print the prompt, so the user knows to re-enter input
  end
end

def spice_choice(option, lineup)
  while option = gets.chomp
    case option
    when "1"
      add_member(lineup)
      break
    when "2"
      remove_member(lineup)
      break
    when "3"
      list_changeables
      break
    when "4"
      display_talent(lineup)
      break
    when "5"
      add_yourself(lineup)
      break
    when "6"
      puts "Goodbye to the Spiceworld"
      break
  else
    puts "Please select 1-6!"
    print prompt
  end
end


original

loop do
  prompt = ">"
  puts "\n\n\n*************************************************************"
  puts "These are the Spice girls, there are currently #{lineup.count_members} members. Your selections are: "
  puts "1 - Add a spice girl from a list of candidates"
  puts "2 - Remove a spice girl"
  puts "3 - Change an attribute of an existing girl"
  puts "4 - Display talent in the band"
  puts "5 - Add yourself to the band"
  puts "6 - Exit"
  puts "Please select what you would like to do:"

  print prompt

  option = gets.chomp.to_i

  if option == 1
    add_member(lineup)
  elsif option == 2
    remove_member(lineup)
  elsif option == 3
    change_something(lineup)
  elsif option == 4
    display_talent(lineup)
  elsif option == 5
    add_yourself(lineup)
  elsif option == 6
    puts "Goodbye to the Spiceworld"
    break
  else
    puts "Error - Abort Spice!"
    break
  end
end
