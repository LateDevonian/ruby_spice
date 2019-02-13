#spice girl blueprint
class SpiceGirl
  attr_accessor :stage_name, :firstname, :surname, :quirk, :special_talent, :status, :id

  def initialize(stage_name = 'Melange',firstname = 'Chani', surname = 'Rakis', quirk = 'Weirding Way', special_talent = 'Burping', id = 0)
    @stage_name = stage_name
    @firstname = firstname
    @surname = surname
    @quirk = quirk
    @status = true
    @special_talent = special_talent
    @id = id
  end

  #before_create :set_id
   #setid

end
