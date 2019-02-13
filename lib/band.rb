##Create Band
require_relative './spice_girl'


class Band
  attr_accessor :firstname, :surname, :quirk, :special_talent, :status

  def initialize
    @band = [
      SpiceGirl.new('Ginger', 'Geri', 'Halliwell','red hair','having no soul', 0),
      SpiceGirl.new('Posh', 'Victoria', 'Beckham', 'snobby looks' ,'dancing awkwardly',1),
      SpiceGirl.new('Baby', 'Emma', 'Bunton', 'wearing a pacifier', 'breaking an ankle onstange',2),
      SpiceGirl.new('Sporty', 'Melanie', 'Brown', 'gold tooth','interesting postures',3),
      SpiceGirl.new('Scary', 'Melanie', 'Chisholm', 'bad taste in men','sticking it to the man',4)
    ]
    @id_counter = 4

    @band2 = [
      SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'is a duck', 'bird impersonations'),
      SpiceGirl.new('Stampy', 'Susan', 'Ivonava', '90s makeup', 'leadership'),
      SpiceGirl.new('Gusset', 'Rei', 'Aionami', 'being a clone', 'mech suit interfacing'),
      SpiceGirl.new("Shrill", 'Clementine', 'Ford', 'men hating', 'awesome feminism')
    ]
  end

  def band
    @band
  end

  def band2
    @band2
  end

  def list_names2
    @band2.each { |member| puts member.stage_name }
  end

  #count spice spice_girls in band
  def count_members
    @band.count
  end

  def list_names
    @band.each { |m| puts m.stage_name }
  end

  def list_surname
    @band.each { |m| puts m.surname }
  end

  def list_members
    @band.each { |m| "#{m.id}. #{m.stage_name}" }
  end


  def wipe_girl(input_name)
    found = @band.find do |girl|
      girl.stage_name == input_name
    end
    #add validation
    @band.delete(found)
  end

  def name_check=(name_check)
    if name_check == nil or name_check.size == 0
      raise ArgumentError.new("You need to enter something")
    end
    @name_check = name_check
  end

  #method to add memeber
  def add_girl(input_name)
    if check_if_exists?(input_name)
      found = @band2.find do |girl|
        girl.stage_name == input_name
      end
      raise ArgumentError, "You didn't choose from the list" if found == nil
      append_member(found)
    else
      raise "You already have a girl of that name"
    end
  end

  #method to add yourself to spice girls
  def yourself(stage_name, firstname, surname, quirk, special_talent)

    if check_if_exists?(stage_name)
     you = SpiceGirl.new(stage_name, firstname, surname, quirk, special_talent)
     append_member(you)
    else
      raise "You already have a girl of that name"
    end
  end

  def list_talent
    @band.each do |member|
     puts "#{member.stage_name}'s real name is #{member.firstname} #{member.surname} "\
     "and can be identified by her #{member.quirk}. "\
     "She is known mostly for her mad skills of #{member.special_talent}."
    end
  end

  def get_attribute(member, attribute)
    id = input_name_get_id(member)
    member = find_member(id)
    case attribute
      when 'a'
        member.stage_name
      when 'b'
        member.firstname
      when 'c'
        member.surname
      when 'd'
        member.quirk
      when 'e'
        member.special_talent
      else
      false
    end
  end

  #method to update surname
  # def surname_update(surname_who, surname_new)
  #   girl = @band.find do |g|
  #     g.surname == surname_who
  #   end
  #
  #   girl.surname = surname_new.capitalize
  # end

  def change_attribute(member, attribute, new_value)
    id = input_name_get_id(member)
    member = find_member(id)

    case attribute
      when 'a'
        member.stage_name = new_value.capitalize
      when 'b'
        member.firstname = new_value.capitalize
      when 'c'
        member.surname = new_value.capitalize
      when 'd'
        member.quirk = new_value.downcase
      when 'e'
        member.special_talent = new_value.downcase
      else
      false
    end
  end

  def find_member_by(attribute:, value:)

    attribute = qwerty.first.first
    value = qwerty.first.last

    @band.find do |mem|
      mem.send(attribute, value)
    end
    # qwerty
  end

  private

  def check_if_exists?(input_name)
    @band.none? { |n| n.stage_name == input_name }
    end

  def input_name_get_id(input_name)
    found = @band.find do |n|
      n.stage_name == input_name
    end
    @id = found.id
  end

  def gen_id
    @id_counter = @id_counter + 1
  end

  def append_member(member)
    member.id = gen_id
    if is_unique_id?(member)
      @band.push(member)
      else
        raise "Youse are fucked"
    end
  end

  def is_unique_id?(member)
    @band.none? { |n| n.id == member.id }
  end

  def find_member(id)
    found = @band.find do |mem|
      mem.id == id
    end
  end
end
