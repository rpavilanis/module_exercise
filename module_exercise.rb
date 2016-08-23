###################################
######      NAMESPACE        #####
###################################

# Provides a container to hold things like methods, classes and constants as a way to group them together logically and to help avoid conflicts with other methods and classes that may have the same name,
#typically written by someone else (**Ahem, gems**).


###################################
######    EXAMPLE MODULE      #####
###################################


  # module Perimeter
  #   class Array
  #     def initialize
  #       @size = 400
  #     end
  #   end
  # end
  #
  # our_array = Perimeter::Array.new  #syntax for calling module module::classname.new
  #
  # ruby_array = Array.new
  #
  # p our_array.class  #lets you know what actual class of object is (.class), p is short for print (e.g., this will tell you it is array wrapped in a module)
  #
  # p ruby_array.class
  #
  # p our_array.length  #.length is a method of Ruby class Array, not of the class we created called Array - we would need to create a length method in order to do this

###################################
#### WHY YOU SHOULD LOVE FAKER ###
###################################
#DOCUMENTATION
#https://github.com/stympy/faker#fakerhacker

# require "faker"
#
# puts Faker::Hacker.say_something_smart
# puts Faker::Hacker.adjective
# puts Faker::Hacker.verb


#Notice the format of how we're calling the functionality of the Faker gem, How is Faker's code structured?



###################################
###### TRAVELLER GEM STEP ONE #####
###################################
#DOCUMENTATION:
#https://github.com/kqdreger/traveller

# Testing out the traveller gem!
#
#   require 'traveller'
#
#   trav = Traveller.new("Seattle, Minnesota 98101")
#
#   puts traveller1.city
#   puts traveller1.zip
#
#   trav.state = "Washington"
#
#   puts traveller1.state


###################################
###### TRAVELLER GEM STEP TWO #####
###################################

#I want to create a new class for travellers, called traveller. What could possibly go wrong?
# module Expedia
#   class Traveller
#     attr_accessor :name, :email, :city, :state
#     def initialize(details_hash)
#       @name = details_hash[:name]
#       @email = details_hash[:email]
#       @location = details_hash[:location]
#     end
#   end
# end
#
#   #Tests to use the Traveller Gem (after my class has been created. )
#     traveller2 = Traveller.new("Chicago 60611 IL")
#     location = Traveller.new("Seattle, Washington 98101")
#     user1 = Expedia::Traveller.new({name: "name", email: "email", location: location})
#
#     # puts Traveller.state

  #Hmm. It doesn't work. Oh bother.
  #How would we possibly fix this so I don't have to change the name of MY class but still be able to use this gem?



  ###################################
  #########     CONSTANTS    ########
  ###################################

  #A Ruby constant is like a variable, except that its value is supposed to remain constant for the duration of the program. The Ruby interpreter does not actually enforce the constancy of constants, but it does issue a warning if a program changes the value of a constant

  #### NOTES ###

  # Constants defined within a class or module may be accessed anywhere within the class or module.

  # Outside the class or module, they may be accessed using the scope operator, :: prefixed by an expression that returns the appropriate class or module.

  # Constants defined outside any class or module may be accessed as it is or by using the scope operator with no prefix.
  # Constants may not be defined in methods.

  # Constants may be added to existing classes and modules from the outside by using the class or module name and the scope operator before the constant name.



      #   module Blackjack
      #     MAX_SCORE = 21
      #     module Player
      #         MAX_PLAYERS = 2
      #         class Player
      #           def initialize
      #           end
      #         end
      #     end
      #     module Card
      #         MAX_VALUE = 13
      #         class Card
      #           def get_max_value()
      #               return MAX_VALUE
      #           end
      #         end
      #     end
      #   end
      #
      # MAX_SCORE = 50
      # MAX_PLAYERS = 4
      # MAX_VALUE = 21
      #
      # puts "MAX_SCORE - #{MAX_SCORE}"    # 50
      # puts "Blackjack::MAX_SCORE - #{Blackjack::MAX_SCORE}"  # 21
      #
      # puts
      #
      # puts "MAX_Players - #{MAX_PLAYERS}"
      # puts "Blackjack::Player::MAX_Players - #{Blackjack::Player::MAX_PLAYERS}"  # multiple levels of modules - and then a constant -> would be MODULE::MODULE::CONSTANT

      # if not in a class or module, could call by name or by ::CONSTANT
      #
      # puts
      #
      # puts "MAX_VALUE - #{MAX_VALUE}"
      # puts "Blackjack::Card::get_max_value -  #{Blackjack::Card::Card.new().get_max_value()}"`
