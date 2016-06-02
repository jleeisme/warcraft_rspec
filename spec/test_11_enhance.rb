require_relative 'spec_helper'

describe Footman do

  before :each do 
    @footman = Footman.new
  end

  describe "#attack_barracks" do 
    it "should deal half it's AP damage to the barracks." do
      building = Barracks.new
      expect(building).to receive(:damage).with(2)
      @footman.attack_barracks(building)
    end  
  end


end

