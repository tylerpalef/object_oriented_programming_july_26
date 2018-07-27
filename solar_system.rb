class System
@@bodies = []
@@total_mass = []

  def initialize
    @@bodies = bodies
    @@total_mass = total_mass
    @add = add
    @total_mass = total_mass
  end

  def add
    @add
  end

  def total_mass
    total = 0
    @@total_mass.each { |total| total += mass}
    return total
    # sum
    # sum.inject(0){|sum,x| sum + x }
  end

  def add=(planet)
    @add = planet
  end

  def self.bodies
    return @@bodies
  end

  def self.total_mass
    return @total_mass
  end

end

class Body < System
  def initialize(name, mass)
    @name = name
    @mass = mass
    @@bodies << name
    @@total_mass << mass

  end
end

class Planet < Body
  def initialize(day, year)
    @day = day
    @year = year
    super
  end
end

class Star < Body
  def initialize(type)
    @type = type
  end
end

class Moon < Body
  def initialize(month, planet_orbit)
    @month = month
    @planet_orbit = planet_orbit
    super
  end
end

earth = Body.new('Earth', 99)
uranus = Body.new('Uranus', 69)
p earth
p uranus

p System.bodies
p System.total_mass
