class Dog
  attr_reader :dog
  @@all = []
  
  def initialize(dog)
    @dog = dog
    save
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.each {|i| puts i.dog}
  end
  
  def self.clear_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def name
    @dog
  end

end