require "spec_helper"
require_relative '../lib/spice_girl'

describe "test the framework is active" do
  it "verifies rspec is working" do
    expect(true).to eq(true)
  end
end

describe SpiceGirl do
  #lots of examples about how rspec works 
  test_thing = SpiceGirl.new

  it 'creates a spice girl object' do
    expect(test_thing).to be
  end

  puts test_thing

  context 'when we call a method on the subject' do
    describe 'when the  default initate is "stage_name"' do
      it 'returns the word "Melange"' do
        expect(test_thing.stage_name).to eq('Melange')
      end
    end

    describe 'when stage_name method is set' do
      #here i am playing around with various test techinques
      it 'returns the name as requried ' do
        test_thing = SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'Is a duck', 'Bird Impersonations')
        expect(test_thing.stage_name).to eq('Leaky')
      end

      it 'checks that the first name starts with a letter' do
        test_thing = SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'Is a duck', 'Bird Impersonations')
        expect(test_thing.firstname).to start_with('J')
      end

      #use as an integer as well
      it 'checks the surname ends with a k ' do
        test_thing = SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'Is a duck', 'Bird Impersonations')
        expect(test_thing.quirk).to end_with('k')
      end

      it 'checks the quirk includes some characters ' do
        test_thing = SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'Is a duck', 'Bird Impersonations')
        expect(test_thing.quirk).to include('uc')
      end
      #not_to => include() or start_with() or be_a(another class)
      it 'checks the stage_name to not include some characters' do
        test_thing = SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'Is a duck', 'Bird Impersonations')
        expect(test_thing.stage_name).not_to include('pudding')
      end

      it 'checks the start and end characters' do
        test_thing = SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'Is a duck', 'Bird Impersonations')
        expect(test_thing.stage_name).to start_with('L') and end_with('y')
      end
      #matcher respond_to checks that status is set
      it 'getting a reponse for status' do
        test_thing = SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'Is a duck', 'Bird Impersonations')
        expect(test_thing).to respond_to(:status)
      end

      it 'checking for multiple matches in stage_name' do
        test_thing = SpiceGirl.new('Leaky', 'Jermima', 'Puddledick', 'Is a duck', 'Bird Impersonations')
        expect(test_thing.firstname).to eq("Jermima").or eq('Stampy').or eq('Queery')
      end
    end
  end
end
