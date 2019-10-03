require "pry"

class Dog

  attr_accessor :name

  @@all = []
  
   def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
    new.save
  end

  def self.all
    @@all.each do |dog|
      puts dog.name
    end
  end

  def self.clear_all
    @@all.clear
  end
  
  def self.print_all
    @@all.each do |dog|
    puts dog.name
  end
def save
     self.class.all << self
  end

end
end


