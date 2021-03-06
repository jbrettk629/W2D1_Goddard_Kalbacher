# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue StandardError 
    return nil 
  end 
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)

    if FRUITS.include? maybe_fruit
      puts "OMG, thanks so much for the #{maybe_fruit}!"
    else 
      raise StandardError   
    end

end

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"
    puts "Feed me a fruit! (Enter the name of a fruit:)" 
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue 
    puts "I like coffee, but I want fruit!" if maybe_fruit == "coffee"
    retry if maybe_fruit == "coffee"
  end 
end  

# PHASE 4
class TooFewYears < StandardError
  def initialize(msg="That's too few years to be calling yourself anyone's best friend")
    super 
  end 
end

class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise TooFewYears if yrs_known < 5
    raise "Name can not be blank" if name.length == 0
    raise "Favorite pasttime can't be blank" if fav_pastime.length == 0
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known} years. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


