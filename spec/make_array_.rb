require "spec_helper"
require_relative '../lib/make_array_s'

describe "the spice_girls function" do

  it "returns an array of spice girls" do

    # here we call the function and assign its output to a local variable I've called 'output'
    output = spice_girls

    # Then we assert that the output variable contains some value (ie, that it exists)
    expect(output).to be

    # We can also assert other things, like that it is an Array
    expect(output.class).to eq(Array)

    # Or that it is long enough to contain all the spice girls
    expect(output.length).to eq(5)

  end

end
