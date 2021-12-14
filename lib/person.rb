require "pry"
class Person
    def initialize(attributes)
      attributes.each do |key, value|
        # create a getter and setter by calling the attr_accessor method
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
    end
  end



bob_attributes = { name: "Bob", hair_color: "Brown" }
susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }
shay = {name: "Shay", hair_color: "Blonde", eye_color: "Blue"}

# binding.pry