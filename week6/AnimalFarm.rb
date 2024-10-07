class Animal
  def initialize(name, type)
    @name = name
    @type = type
  end

  def talk
    puts "Grrrr!!!!"
  end

  def identity
    puts "Animal name: #{@name} and type: #{@type}"
  end
end

#----Main Script Logic -----
largeAnimal = Animal.new("Leo" , "Lion")
smallAnimal = Animal.new("Marvin" , "Mouse")

puts largeAnimal.identity.to_s
puts smallAnimal.identity.to_s

puts smallAnimal.talk.to_s
puts largeAnimal.talk.to_s
