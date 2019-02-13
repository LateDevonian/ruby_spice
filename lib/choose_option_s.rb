

class SpiceGirl
  def initialize(name = 'Melange', firstname = 'Chani', surname = 'Rakis', quirk = 'Weirding Way')
    @name = name
    @firstname = firstname
    @surname = surname
    @quirk = quirk
    @special_talent = nil
  end
  def talent_of_note
    @special_talent = 'sings and dances'
  end
  def get_movement
    @special_talent
  end
end

#set attributes for original spice_girls
ginger_spice = SpiceGirl.new('Ginger', 'Geri', 'Halliwell', 'Red Hair')
leaky_spice = SpiceGirl.new('Victoria', 'Victoria', 'Beckham', 'Dancing awkwardly')
leaky_spice = SpiceGirl.new('Baby', 'Emma', 'Bunton', 'Wearing a pacifier')
leaky_spice = SpiceGirl.new('Sporty', 'Melanie', 'Brown', 'Football')
leaky_spice = SpiceGirl.new('Scary', 'Melanie', 'Chisholm', 'Talent')
