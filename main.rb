require_relative './lib/spice_girl'
require_relative './lib/band'
require 'byebug'

def list_changeables

    changeable = {"Stage name" => "a",
    "First name" => "b",
    "Surname" => "c",
    "Quirk" => "d",
    "Talent" => "e"
  }
  changeable.each do |key,value|
    puts "#{value}: #{key}"
  end
end

def describe_attribute(attribute)
  case attribute
    when 'a'
    "Stage name"
    when 'b'
      "First name"
    when 'c'
      "Surname"
    when 'd'
      "Quirk"
    when 'e'
      "Talent"
    else
    false
  end
end

#option 1- add a new member method
def add_member(lineup)
  puts "you have chosen to add a spice girl. Enter the name of the girl: "
  lineup.list_names2
  pick_newby = gets.chomp
  lineup.name_check=(pick_newby)
  lineup.add_girl(pick_newby)
  puts "your new lineup is :"
  lineup.list_names
end

#option 2 - delete a member method
def remove_member(lineup)
  puts "You have chosen to remove a spice girl. Enter nickname:"
  lineup.list_names
  delete_girl = gets.chomp
  lineup.name_check=(delete_girl)
  lineup.wipe_girl(delete_girl)
  puts "your new lineup is :"
  lineup.list_names
end

#option three change an attribute
def change_something(lineup)

  puts "Who do you want to change? Enter Spice name: "
  lineup.list_names
  member = gets.strip
  lineup.name_check=(member)
  puts "What would you like to change? enter a --> e "
  list_changeables
  attribute = gets.strip
  lineup.name_check=(attribute)
  att_name = describe_attribute(attribute)
  current_att = lineup.get_attribute(member, attribute)
  puts "#{member}'s #{att_name} is #{current_att}...what do you want to change it to?:"
  new_value = gets.strip
  lineup.name_check=(new_value)
  byebug
  lineup.change_attribute(member, attribute, new_value)
   puts "#{member}'s #{att_name} has been changed."
end

#see full list of band members with special abilities lined up
def display_talent(lineup)
  lineup.list_talent
end

def add_yourself(lineup)
  puts "Congratulations on joining! We need some information first: "
  puts "What is your first name?"
  firstname = gets.chomp
  lineup.name_check=(firstname)
  puts "What is your surname?"
  surname = gets.chomp
  lineup.name_check=(surname)
  puts "What would you like for your band nickname?"
  stage_name = gets.chomp
  lineup.name_check=(stage_name)
  puts "What will you wear to identfy yourself?"
  quirk = gets.chomp
  lineup.name_check=(quirk)
  puts "What is your special talent?"
  talent = gets.chomp
  lineup.name_check=(talent)
  lineup.yourself(stage_name, firstname, surname, quirk, talent)
  lineup.list_names
  end

lineup = Band.new

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

  while option = option #gets.chomp.to_is
    case option
      when 1
        add_member(lineup)
        break
      when 2
        remove_member(lineup)
        break
      when 3
        change_something(lineup)
        break
      when 4
        display_talent(lineup)
        break
      when 5
        add_yourself(lineup)
        break
      when 6
        puts "Goodbye to the Spiceworld"
        exit 0
    else
      puts "Please select 1-6!"
      print prompt
      break
    end
  end
end
