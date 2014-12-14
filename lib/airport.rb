class Airport
  
  def initialize
    @capacity = 20
    @planes =[]
  end

  def plane_count
    @planes.count
  end

  def land(plane)
    raise "Airport is full" if full?
    @planes << plane
  end

  def take_off(plane)
    @planes.delete(plane)
  end

  def full?
    plane_count == @capacity
  end

end