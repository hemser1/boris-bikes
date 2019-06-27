require 'docking_station'

describe DockingStation do
    it 'responds to the method "release bike" ' do
        expect(subject).to respond_to(:release_bike)
    end

    describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    describe '#dock' do
      it 'docks bike with station' do
          bike = Bike.new
        expect(subject.dock(bike)).to eq [bike]
      end

      it 'raises an error if tyring to dock more than 20 bikes' do
        subject.capacity.times {subject.dock Bike.new}
        expect { subject.dock(Bike.new) }.to raise_error "Docking station full"
      end
    end

    describe 'initialization' do
      subject { DockingStation.new }
      let(:bike) { Bike.new }
      it 'defaults capacity' do
        described_class::DEFAULT_CAPACITY.times do
          subject.dock(bike)
        end
        expect{ subject.dock(bike) }.to raise_error 'Docking station full'
      end
    end
end

#describe Bike do

 #   it { is_expected.to respond_to :working?}
#end
