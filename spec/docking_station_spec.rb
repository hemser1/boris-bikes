require 'docking_station'

describe DockingStation do
    it 'responds to the method "release bike" ' do
        expect(DockingStation.new).to respond_to(:release_bike)
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it { is_expected.to respond_to(:bike) }

    it 'docks bike with station' do
      bike = Bike.new
      station = DockingStation.new
      expect(station.dock(bike)).to eq bike
    end

#    it 'gets a bike' do
#        expect(DockingStation.new.release_bike).to eq Bike.new
#    end
end

describe Bike do

    it { is_expected.to respond_to :working?}


end
