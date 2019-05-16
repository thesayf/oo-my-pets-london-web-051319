class Owner

attr_accessor :name

@@all = []

def initialize(species)
  
  @species = species
  
  @pets = {
    fishes: [],
    dogs: [],
    cats: []
  }
  
  @@all << self

end 

def self.all
  @@all
end

def species
    
    @species

end

def say_species

 "I am a #{self.species}."
end

def name
  
  @name
  
end 

def pets
  
  @pets
  
end


def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
  
 end 
 
def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
  
end 
 
def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
end 

def walk_dogs

  @pets[:dogs].each { |dog| dog.mood = "happy"}
end

def play_with_cats

  @pets[:cats].each { |cat| cat.mood = "happy"}
end
 
def feed_fish
  
  @pets[:fishes].each { |fish| fish.mood = "happy"}

end
 
 
def sell_pets
  @pets.clear
    @pets[:dogs].each { |dog| dog.mood = "nervous"}
  @pets[:cats].each { |cat| cat.mood = "nervous"}
  @pets[:fishes].each { |fish| fish.mood = "nervous"}
  
end

def list_pets
  
  @pets.each do |dog| 
    
    
    
  end
  

end 
 
end