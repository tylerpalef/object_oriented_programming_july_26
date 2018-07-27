class System
@@bodies = []

  def initialize(name='N/A', mass='N/A')
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
    @@bodies
  end

end

class Body < System
  def initialize(name, mass)
    @name = name
    @mass = mass
    @@bodies << name
    super
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
moon = Moon.new('12', 'Earth')
p earth
p moon
p bodies
# puts bodies
