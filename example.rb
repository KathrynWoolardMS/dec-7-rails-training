require 'date'

class Animal
    def speak(name)
        "My name is #{name}!"
    end
end

module Age
    def age(birthdate)
        current_year = Date.today.year
        current_year - Date.parse(birthdate).year
    end
end

class Dog < Animal
    include Age

    attr_accessor :name, :breed, :birthday

    def initialize(name:, breed:, birthday:)
        @name = name
        @breed = breed
        @birthday = birthday
    end

    def speak
        "Woof! #{super(name)}! I am #{age(birthday)} years old!"
    end

    def self.names(dog_house)
        dog_house.map { |dog| dog.name }
    end
end

dog = Dog.new(breed: "border collie", birthday: "04/06/2006", name: "Mia")
puts dog.speak
puts dog.name