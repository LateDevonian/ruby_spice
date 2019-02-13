
require_relative './spice_girl'



 def add_from_list (option)
spice_girls = ['Ginger', 'Sporty', 'Baby', 'Scary', 'Posh']
   puts "You have chosen to add a SpiceGirl from a list Please select one:"
  new_names = [
  [1,"Shrill"],
  [2,"Leaky"],
  [3,"Stampy"],
  [4,"Gusset"]
]
new_names.each do |name|
puts name
end
#    new_spice.push(SpiceGirl.new(name))
#  end

# new_spice.each do |spice_girl|
#  puts new_spice.name
# end

new_names = gets
new_names = new_names.to_i

if new_names == 1
  puts "Shrill is your new Spice girl. She has an agenda."
  shrill_spice = SpiceGirl.new('Shrill', 'Clementine', 'Ford', 'Awesome Feminist')
  spice_girls << "Shrill"
elsif new_names == 2
  puts "You may need a towel for Leaky."
  leaky_spice = SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'Bird Impersonations')
  spice_girls << "Leaky"
elsif new_names == 3
  puts "Stampy has her stampy pants on today."
  stampy_spice = SpiceGirl.new('Stampy', 'Susan', 'Ivonava', 'Leadership')
  spice_girls << "Stampy"
elsif new_names == 4
  puts "Gusset will go your throat in a mech suit if you pick on her."
  gusset_spice = SpiceGirl.new('Gusset', 'Rei', 'Aionami', 'Mech Suit Interface')
  spice_girls << "Gusset"
else
  puts "error, abort!"
  return "error"
end

end
spice_girls.each do |spice_girl|
  puts spice_girl
end



option = 1
add_from_list(option)
