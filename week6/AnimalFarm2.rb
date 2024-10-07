class Animal
  def initialize(name, type)
    @name = name
    @type = type
  end

  def talk
    puts "Grrrr!!!!"
  end

  def identity
    puts "Animal: #{@name} and type: #{@type}"
  end
end

class Lion < Animal
  def talk
    puts "Roar!!!!"
  end
end

class Mouse < Animal
  def talk
    puts "Eeek!!"
  end
end
#----Main Script Logic -----
largeAnimal = Lion.new("Leo" , "Lion")
smallAnimal = Mouse.new("Marvin" , "Mouse")

humanAnimal = Animal.new("Jerry" , "Homosapien")
puts largeAnimal.identity.to_s
puts smallAnimal.identity.to_s
puts humanAnimal.identity.to_s

puts smallAnimal.talk.to_s
puts largeAnimal.talk.to_s
puts humanAnimal.talk.to_s
