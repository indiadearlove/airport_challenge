require 'plane'

describe Plane do

  let (:plane) { Plane.new }

  it 'has a flying status when created' do
    expect(plane.flying?).to eq(true)
  end

  it 'has a flying status when in air' do
    plane.in_air!
    expect(plane.flying?).to eq(true)
  end

  it 'can take off' do
    plane.take_off!
    expect(plane.flying?).to eq(true)
  end

  it 'changes its status to flying after taking off' do
    plane.land!
    expect(plane.flying?).to eq(false)
    plane.take_off!
    expect(plane.flying?).to eq(true)
  end

end