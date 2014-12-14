require 'airport.rb'
require 'plane.rb'

describe Airport do

  let (:airport) {Airport.new}
  let (:plane) {Plane.new}

  context 'taking off and landing' do

    it 'a plane can land' do
      expect(airport.plane_count).to eq(0)
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
    end

    it 'a plane can take off' do
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
      airport.take_off(plane)
      expect(airport.plane_count).to eq(0)
    end

  end

  context 'traffic control' do

    it 'a plane can not land if the airport is full' do
      20.times{ airport.land(Plane.new) }
      expect(airport.plane_count).to eq(20)
      expect(airport.full?).to eq(true)
      expect(airport.plane_count).to eq(20)
    end
  
  end

end