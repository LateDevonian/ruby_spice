require "spec_helper"
require_relative '../lib/spice_girl'


describe SpiceGirl do
  #lots of examples about how rspec works
  #:stage_name, :firstname, :surname, :quirk, :special_talent, :status
  let(:stage_name) {'Leaky'}
  let(:firstname) {'Jermima'}
  let(:surname) {'Puddledick'}
  let(:quirk) {'Is a duck'}
  let(:special_talent) {'Bird Impersonations'}
  subject {SpiceGirl.new(stage_name,firstname,surname,quirk,special_talent) }

  describe 'when rspec potential test noodling around' do
    it 'gets the stage name ' do
      expect(subject.stage_name).to eq('Leaky')
    end

    it 'checks the quirk includes some characters ' do
      expect(subject.quirk).to include('uc')
    end

    it 'checks the stage_name to not include some characters' do
      expect(subject.stage_name).not_to include('pudding')
    end

    it 'checks the start and end characters' do
      expect(subject.stage_name).to start_with('L') and end_with('y')
    end
    #matcher respond_to checks that status is set
    it 'getting a reponse for status' do
      expect(subject).to respond_to(:status)
    end

    it 'checking for multiple matches in stage_name' do
      expect(subject.firstname).to eq("Jermima").or eq('Stampy').or eq('Queery')
    end
  end

  describe 'when playing with error handling' do
    it 'overrides the set name for this instance' do


    end
    #it 'errors if the name is wrong'
   # expect { subject.stage_name('Hoochie') }.to raise_error(
   #   ArgumentError, "You didn't choose from the list"
  end

end
