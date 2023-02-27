class Duck
  def quack
    puts 'Duck quack'
  end
  def swim
    puts 'Duck swim'
  end
end
class Goose
  def quack
    puts 'Goose quack'
  end
  def swim
    puts 'Goose swim'
  end
end
class BirdActions
  attr_reader :birds
  def initialize
    @birds = []
    duck = Duck.new()
    goose = Goose.new()
    @birds.push(duck)
    @birds.push(goose)
  end
  def quack
    birds.each do | bird |
      bird.quack
    end
  end
  def swim
    birds.each do | bird |
      bird.swim
    end
  end
end

action = BirdActions.new()
action.quack
action.swim
