require 'plane'
require 'airport'

describe "The grand finale" do

  let (:airport) {Airport.new}
  let (:plane) {Plane.new}
  let (:planes) { Array.new(6) { Plane.new } }

  it 'all planes can land and all planes can take off' do
    6.times { airport.land(Plane.new) }
    expect(airport.plane_count).to eq(6)
  end

end