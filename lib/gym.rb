class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
  Membership.all.select{|gym_instance| gym_instance.gym== self}
  end

  def lifters 
    self.memberships.map{|gym_instance|gym_instance.lifter}
  end

  def lifters_names
    self.lifters.map{|lifter| lifter.name}
  end


end
