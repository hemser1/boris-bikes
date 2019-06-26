require 'docking_station'

describe DockingStation do
    it 'responds to the method "release bike" ' do
        expect(DockingStation.new).to respond_to(:release_bike)
    end

    describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        station = DockingStation.new
        station.dock(bike)
        expect(station.release_bike).to eq bike
      end

      it 'raises an error when there are no bikes available' do
        station = DockingStation.new
        expect { station.release_bike }.to raise_error 'No bikes available'
      end
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it { is_expected.to respond_to(:bike) }

    it 'docks bike with station' do
      bike = Bike.new
      station = DockingStation.new
      expect(station.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
        bike = Bike.new
        station = DockingStation.new
        station.dock(bike) 
        expect(station.bike).to eq bike
    end

end





#describe Bike do

 #   it { is_expected.to respond_to :working?}
#end
