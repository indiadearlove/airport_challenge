require 'plane'

describe Plane do

  let (:plane) { Plane.new }

  it 'has a flying status when created' do
    expect(plane.flying?).to eq(true)
  end

end