require "spec_helper"
require 'byebug'
require_relative '../lib/band'
require_relative '../lib/spice_girl'


describe Band do

  subject { Band.new }

  context 'when we create a band object' do
    it 'creates a band prefilled with spice girls' do
      expect(subject).to be_an_instance_of(Band)
    end
  end

  # context 'when i update an attribute of a girl' do
  #   describe "change attribute of any girl" do
  #     it 'does not remove or add a girl' do
  #       original_number = subject.count_members
  #
  #       subject.change_attribute("Ginger","a","Goodies")
  #       expect(subject.count_members).to eq(original_number)
  #     end
  #
  #     it 'changes a girl stage name' do
  #       subject.change_attribute("Sporty", "a", "Bouncy")
  #       # expect(subject.find_member_by(stage_name: 'Bouncy')) to be successful
  #       expect(subject.stage_name).to include("Bouncy")
  #       expect(subject.stage_name).not_to include("Sporty")
  #     end
  #
  #     it 'changes a girl first name' do
  #       subject.change_attribute("Baby", "b", "Thadeous")
  #       expect(subject.firstname).to include("Thadeous")
  #       expect(subject.firstname).not_to include("Emma")
  #     end
  #
  #     it 'changes a girl Surname' do
  #       subject.change_attribute("Sporty", "c", "White")
  #       expect(subject.surname).to include("White")
  #       expect(subject.surname).not_to include("Brown")
  #     end
  #     it 'changes a girl quirk' do
  #       subject.change_attribute("Scary", "d", "SPITTING")
  #       expect(subject.quirk).to include("spitting")
  #       expect(subject.quirk).not_to include("bad taste in men")
  #     end
  #
  #     it 'changes a girls special talent' do
  #       subject.change_attribute("Ginger", "e", "Fits of petulance")
  #       expect(subject.special_talent).to include("fits of petulance")
  #       expect(subject.special_talent).not_to include("having no soul")
  #     end
  #   end
  #end
  #
  #   it 'updates a member surname' do
  #     subject.surname_update('Bunton', 'Blibble')
  #     expect(subject.surname).to include('Blibble')
  #    #expect(subject.surname).to eq(subject(surname_new)
  #   end
  #  end
  context "when i delete a girl" do
    describe '#wipe_girl' do
      it 'removes a chosen girl from the band' do
        expect(subject.stage_name).to include('Sporty')
        subject.wipe_girl('Sporty')
        expect(subject.stage_name).not_to include('Sporty')
      end
      it 'leaves the other girls in the band' do
        subject.wipe_girl('Sporty')
        expect(subject.stage_name).to include('Ginger','Posh','Baby','Scary')
      end
    end
  end

  context 'when i list the current members of the band' do
    #create a band and confirm it counts through the members to list
  end

  context 'when i add a girl from a list to the band' do
    describe '#add_girl' do
      it 'adds a girl to the band' do
        original_number = subject.count_members
        subject.add_girl('Leaky')
        expect(subject.count_members).to eq(original_number + 1)
      end

      it 'cannot add an invalid girl to the band' do
        #setup
        #this is failing, returns 6. need to build in error handling
        original_number = subject.count_members
        last_member = subject.stage_name.last
        expect { bandtest.add_girl('Hoochie') }.to raise_error(
          ArgumentError, "You didn't choose from the list"
        )
      end

      it 'returns the band with the new member on the end' do
        expect(subject.stage_name.last).not_to eq('Leaky')
        expect(subject.band_count).to eq(5)
        output = subject.add_girl('Leaky')
        #validation test has passed
        expect(output.stage_name.last).to eq('Leaky')
        expect(subject.band_count).to eq(6)
      end
    end
  end

  context 'when i add a bespoke girl to the band' do
    describe 'add yourself to band' do
      it 'check that the band member increases by one' do
        original_number = subject.count_members
        expect(original_number).to eq (5)
        subject.yourself('Snarky', 'Erin', 'Sun', 'Black leather', 'Keeping the peace')
        expect(subject.count_members).to eq(original_number + 1)
      end

      it 'returns the band with the new member on the end' do
        expect(subject.last.stage_name).not_to eq('Snarky')
        expect(subject.band.count).to eq(5)
        output = subject.yourself('Snarky', 'Erin', 'Sun', 'Black leather', 'Keeping the peace')
        expect(output.last.stage_name).to eq('Snarky')
        expect(subject.band.count).to eq(6)
      end
    end
  end
end
