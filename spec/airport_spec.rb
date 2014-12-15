require 'airport'
require 'plane'

describe Airport do

  def ensure_stormy(airport)
    allow(airport).to receive(:stormy?) { true }
  end

  def ensure_sunny(airport)
    allow(airport).to receive(:stormy?) { false }
  end

  let (:airport) {Airport.new}
  let (:plane) {Plane.new}

  context 'taking off and landing' do

    it 'a plane can land' do
      ensure_sunny(airport)
      expect(airport.plane_count).to eq(0)
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
    end

    it 'a plane can take off' do
      ensure_sunny(airport)
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
      airport.take_off(plane)
      expect(airport.plane_count).to eq(0)
    end

  end

  context 'traffic control' do

    it 'a plane can not land if the airport is full' do
      ensure_sunny(airport)
      20.times{ airport.land(Plane.new) }
      expect {airport.land(Plane.new)}.to raise_error(RuntimeError, "Airport is full")
    end
  
  end

  context 'weather conditions' do
    
    it 'raises an exception when take off attempted in storm' do
      plane.landed!
      ensure_stormy(airport)
      expect { airport.take_off(plane) }.to raise_error(RuntimeError, "Bad weather")
    end

    it 'a plane cannot take off when there is a storm brewing' do
      ensure_sunny(airport)
      airport.land(plane)
      ensure_stormy(airport)
      begin
        airport.take_off(plane)
      rescue
      end
      expect(airport.plane_count).to eq(1)
    end

  end   

end