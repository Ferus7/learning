class Developer

   # Class Method
   def self.backend
      "I am backend developer"
   end

   # Instance Method
   def frontend
      "I am frontend developer"
   end

   def self.classMethod
      # Inside class methods, self refers to the class itself
      # in a way.
      self
   end

   def instMethod
      # Inside instance methods, self refers to an instance
      # of the class
      self
   end

end

#puts Developer.class
#puts Class.superclass
#puts Module.superclass
#puts Object.superclass
puts Developer.new.instMethod
puts Developer.classMethod
