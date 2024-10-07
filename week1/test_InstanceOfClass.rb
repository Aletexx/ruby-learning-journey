class Test
  def initialize (make, model)
    @make = make
    @model = model
  end

  def start_engine
    puts "The #{@model} from #{@make} is the best car " +
           "in the market"
  end
end

#Create an Instance of the Test class
car = Test.new("Toyota", "Corolla")

# Use the start_engine method, which prints a message
car.start_engine