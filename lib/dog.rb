# Add your code here
require `pry`
class Dog 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all.push self
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    binding.pry
  #  self.class_variable_get
    @@all.each do |name|
      puts name
    end
  end
  
  def self.clear_all
    @@all.clear
  end
end