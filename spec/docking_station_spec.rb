require 'docking_station'

describe "DockingStation" do 
    it 'responds to the method "release bike" ' do
        expect(DockingStation.new).to respond_to(:release_bike)
    end

    it 'gets a bike' do
        expect(DockingStation.new.release_bike).to eq Bike.new
    end
end