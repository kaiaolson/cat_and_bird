require "./cat_and_bird_helper_methods.rb"

class Animal
  attr_accessor :name, :birds

  def initialize(name)
    @name = name
  end
end

class Cat < Animal
  include HelperMethods

  def initialize(name)
    @caught_birds = []
    super
  end

  def catch(bird)
    if random_number < 50
      puts "#{@name} has caught #{bird.name}!"
      @caught_birds << bird
      eat(bird)
    else
      puts "#{bird.name} escaped!"
    end
  end

  def eat(bird)
    bird = @caught_birds.sample
    random_number < 25 ? (puts "#{@name} has choken on #{bird.name}!") : (puts "#{@name} has eaten #{bird.name}!")
  end
end

class Bird < Animal
end
