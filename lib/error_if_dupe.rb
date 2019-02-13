
class SpiceGirl
  attr_accessor :stage_name, :firstname, :surname, :quirk, :special_talent, :status, :id

  def initialize(stage_name = 'Melange',firstname = 'Chani', surname = 'Rakis', quirk = 'Weirding Way', special_talent = 'Burping', id = 1)
    @stage_name = stage_name
    @firstname = firstname
    @surname = surname
    @quirk = quirk
    @status = true
    @special_talent = special_talent
    @id = id
  end

end

class Band
  attr_accessor :stage_name, :firstname, :surname, :quirk, :special_talent, :status

  def initialize
    @band = [
      SpiceGirl.new('Ginger', 'Geri', 'Halliwell','Red Hair','Leadership', 0),
      SpiceGirl.new('Posh', 'Victoria', 'Beckham', 'Posh Looks' ,'Dancing awkwardly',1),
      SpiceGirl.new('Baby', 'Emma', 'Bunton', 'Wearing a pacifier', 'Breaking an ankle onstange',2),
      SpiceGirl.new('Sporty', 'Melanie', 'Brown', 'Gold Tooth','Football Moves',3),
      SpiceGirl.new('Scary', 'Melanie', 'Chisholm', 'Bad Taste in men','Talent',4)
    ]

      end

      #method to update surname
      def surname_update(surname_who, surname_new)
        girl = @band.find do |g|
          g.surname == surname_who
        end

        girl.surname = surname_new.capitalize
      end
      #method to raise an error and request
      def ask_again

      end

      # def update_member(member_id, update_thing)
      #   found = @band.find do
      #     |m| m.id == member_id.id
      #   end
      #     options = {
      #
      #     }#make an array of update things
      #
      #   # 2. replace them with the passed value
      # end
      #
      # def find_member(id)
      #   #
      #   #find existing member by id and return them
      # end
  end

  lineup = Band.new
  lineup.update_member(0, "sn")
