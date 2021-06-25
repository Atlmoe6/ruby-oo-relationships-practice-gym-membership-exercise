class Lifter
  attr_reader :name, :lift_total
@@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end
  def self.all
    @@all
  end
  def memberships
    Membership.all.select{|lifter_instance| lifter_instance.lifter== self}
  end

  def gyms
    self.memberships.map{|lifter| lifter.gym}
  end


  def self.lifting_total
    #sum all of the lifts, then average them
   lifts = self.all.map {|lifter| lifter.lift_total}

   lifts.sum(0.0)/lifts.length

  end

  def average_lift_total 
    lifting_total/self.all.size
  end

  def new_membership(gym,cost)
    Membership.new(cost, self, gym)
  end
end
