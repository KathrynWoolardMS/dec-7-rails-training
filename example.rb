class Animal
    def speak(name)
        "My name is #{name}!"
    end
end

class Dog < Animal
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def speak
        "Woof! #{super(name)}"
    end
end

dog = Dog.new("Mia")
puts dog.speak
puts dog.name