class Dog 
  attr_accessor :name
  @@all=[]
  
  def self.all
    @@all
  end
  
  
  def save
    @@all << self
  end
  
  def self.clear_all
    @@all.clear
  end
  
  def self.print_all
    @@all.each { |dog| puts dog.name}
    end
  
  
  
  def initialize (name)
    @name = name 
    #@@all << self
    save
  end
end