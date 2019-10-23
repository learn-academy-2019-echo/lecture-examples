# ----------------RUBY CLASSES AND INHERITANCE 10/22/2019

# Everything in Ruby is a class / an instance of a class(object)
# Objects have data(instance variables) and behavior(methods)

# Instance variables @ have the scope of the class, so every method within the class has access to the instance variable

# Vocabulary - instance variable, class/object, initialize, method, inheritance, scope, PascalCase

# A class of Card with a method that defines the type of card
class Card
  def card_type(type)
    @type=type
  end
end
  # creating the new object as a variable
  # prints just the creation of the object of card: <Card:0x00007f99bd8e8e98>
p ace = Card.new
  # calling the method that will return the instance variable defined in the method, returns: "ace"
p ace.card_type('ace')
  # can also be written this way without parentheses: ace.card_type 'ace'
  # ---or chained together----
p ten = Card.new.card_type('ten')


# A class of Plant with an initialize method that will require arguments on the creation of the object - just like the constructor in JS
class Plant
  def initialize(species, leaf_shape)
    @species=species
    @leaf=leaf_shape
  end
  def plant_info
    "The #{@species} is #{@leaf}."
  end
end
  # creating the new object as a variable with the initialize method arguments: <Plant:0x00007f8e3c8797a0 @species="Prickly Pear", @leaf="pads">
p prickly_pear = Plant.new('Prickly Pear', 'pads')
  # calling the class method to return information
p prickly_pear.plant_info


# A class of SucculentPlant with an initialize method that does not take arguments on the creation of the object
class SucculentPlant
  def initialize
    @plant_type= []
  end
  def plant_info
    @plant_type
  end
end
  # creating the new object as a variable SucculentPlant:0x00007fe1c1911518 @plant_type=[]>
p new_plant = SucculentPlant.new
  # use the shovel operator to add items to the plant_type instance variable that holds an array
new_plant.plant_info << 'Split Rock'
new_plant.plant_info << 'Christmas Cactus'
  # returns the array of items from the get_plants method
p new_plant.plant_info


# INHERITANCE

class Light
  def initialize(type)
    @type = type
    @light_status = 'off'
  end
  def flip_switch
    if @light_status == 'off'
      @light_status = 'on'
    else
      @light_status = 'off'
    end
  end
end
  # creating the new object as a variable: <Light:0x00007fa8d69252d0 @type="bulb", @light_status="off">
p my_light = Light.new('bulb')
  # calling the flip_switch method changes the light_status from 'off' to 'on'
p my_light.flip_switch
p my_light.flip_switch
p my_light.flip_switch

# a new class that inherits from the class light
class Lamp < Light
  def initialize(brightness)
    # calling super gives access to the parent methods and instance variables
    super('lamp')
    @brightness = brightness
  end
  def lamp_info
    "The #{@type} is #{@brightness} and is #{@light_status}."
  end
end
  # creating the new object as a variable:<Lamp:0x00007f949c8ce2f8 @type="lamp", @light_status="off", @brightness="dim">
p table_lamp = Lamp.new('dim')
  # same creation of the lamp object without calling super: <Lamp:0x00007fb579178d48 @brightness="dim">
  # now the child class Lamp has access to the methods and objects of the parent class
p table_lamp.flip_switch
p table_lamp.lamp_info
p table_lamp.flip_switch
p table_lamp.lamp_info

# a new class that inherits from the class lamp which in turn inherits from the class Light
class SpotLight < Lamp
  def initialize(color)
    super('very bright')
    @type = 'spotlight'
    @color = color
  end
  def spotlight_info
    "The #{@color} #{@type} is #{@brightness} and turned #{@light_status}."
  end
end
p 'here'
p stage_light = SpotLight.new('yellow')
p stage_light.flip_switch
p stage_light.spotlight_info













# - If a class has many of another, it will have an array of the second class in its initialize method.
# - If one class belongs to another, it will have the name of the class that it belongs to listed under attr_accessor.
# - Another relationship to consider is the “has many through”, meaning that there are at least three classes involved.
#   One class has a relationship to another, by way of a third class defining this.
