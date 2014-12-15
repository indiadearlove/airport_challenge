class Plane

  def initialize
    fly!
  end

  def flying?
    @flying == true
  end

  def fly!
    @flying =true
  end

  def in_air!
    fly!
  end

  def take_off!
    fly!
  end

  def landed!
    @flying = false
  end

  def land!
    landed!
  end

end