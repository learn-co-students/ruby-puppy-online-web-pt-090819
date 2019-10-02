class Dog
  
  attr_accessor :name, :save, :print_all, :clear_all
  
  @@all = []
  @@clear_all
  @@print_all
  def initialize(name = nil)
    @name = name
    save
  end

  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.each do |name|
      puts "#{name}"
  end
  
  def self.clear_all
    @@all.each do |name|
    name.clear
    end
    @@all
    end
  end
end

fido = Dog.new("Fido")
rover = Dog.new("Rover")
Dog.clear_all