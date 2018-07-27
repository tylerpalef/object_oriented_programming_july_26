class System
@@bodies = []

  def initialize
    @@bodies = bodies
    @add = add
    @total_mass = total_mass
  end

  def add
    @add
  end

  def total_mass(sum)
    sum = @@bodies
    sum.inject(0){|sum,x| sum + x }
  end

  def add=(planet)
    @add = planet
  end

  def self.bodies
    return @@bodies
  end

end

class Body < System
  def initialize(name, mass)
    @name = name
    @mass = mass
    @@bodies << name
  end
end

class Planet < Body
  def initialize(day, year)
    @day = day
    @year = year
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
  end
end

earth = Body.new('Earth', 99)
p earth
