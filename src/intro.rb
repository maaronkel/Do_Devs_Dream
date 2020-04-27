require "colorize"

# -- Slow Typing method
def type_slow(words)
  words.each_char { |char| 
    print char
    sleep(0.05)
    }
  print "\n"
end

# -- "close" app method
def clear_screen
  puts `clear`
end

# -- exiting the program with a msg prompt
def close_app
  type_slow("Do you wish to Exit the Test?")
  user_input = gets.chomp
  case user_input
  when "y", "Y", "yes", "Yes", "yeah", "Yeah", "yep", "Yep"
    clear_screen()
  else
    clear_screen()
  end
end


# -- WELCOME SCREEN
class Welcome

  clear_screen()
  sleep(0.5)
  type_slow("Welcome to ...")
  sleep(0.5)
  puts "Do Devs Dream of Electric Sheep?".colorize(:red)
  sleep(3)
  clear_screen()
  type_slow("Bit of a funny name huh? Anyway...")
  sleep(1)
  clear_screen()
  type_slow("This is a...simple test")
  sleep(0.5)
  type_slow("So no need to feel anxious. Relax, and follow the onscreen intructions, I'm sure everything will be fine.")
  type_slow("Anyway...")
  sleep(1)
  type_slow("Ready to get started?".colorize(:light_cyan))
  user_check = gets.chomp
  case user_check
  when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
    type_slow("Lets begin with an introduction shall we?")
    sleep(0.5)
    clear_screen()
  else
    type_slow("Well, you're here now, so lets begin with an introduction shall we?")
    sleep(0.5)
    clear_screen()
  end
  sleep(1)
  type_slow("Alright, so it says here you are...")
  ## TODO - add blinking cursor
  name = gets.chomp
  type_slow("Ahh that's right, take a seat #{name.colorize(:light_black)}. I'm Rick Deckard, a Blade Runner, I'm sure you know what my job is?")
  user_2_check = gets.chomp
  case user_2_check
  when "yes", "ye" "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
    type_slow("Ok, lets continue.")
    clear_screen()
  else
    type_slow("I have to hunt down rogue replicants who have gone against their creators orders. I'm running this test randomly to see if you're one of the people I'm looking for. Sometimes I have to... retire them. So I'm hoping that you're human, as it'll make my day a little easier. Sound alright?")
    user_3_check = gets.chomp
    case user_3_check
    when "retire?", "Retire?", "replicants?", "Replicants?", "huh?", "Huh?", "huh", "Huh", "what?", "What?", "what", "What", "whats a replicant?", "Whats a replicant?"
      sleep(0.5)
      type_slow("Replicants are an advanced form of AI, physically identical to humans, engineered for degrading work like slave labour, war, etc. Blade Runners like myself have to retire (assasinate) a replicant when they're deemed \"rogue\"...")
      sleep(2)
      type_slow("...".colorize(:light_black))
      sleep(1)
      type_slow("You're not trying to do trick me into eluding to the fact you \"don't know what a replicant is?\"...")
      sleep(0.5)
      type_slow("Anyway...")
      sleep(0.5)
      clear_screen()
    else
      clear_screen()
    end
  end
  sleep(2)
  type_slow("Now, do you know what type of test this is?")
  user_4_check = gets.chomp
  case user_4_check
  when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
    type_slow("Ok, lets continue.")
    clear_screen()
  else   
    type_slow("Huhhh, alright, well... it's essentially an advanced form of a lie detector test that measures contractions of the iris and the presence of invisible airborne particles emitted from the body. It's primarly used by people like me, Blade Runners, to determine if a suspect is truly human by measuring the degree of their empathic response through carefully worded questions and statements.")
    sleep(1) 
    ## TODO - add a blinking cursor instead of the .......
    type_slow("......")
    sleep(1)
    type_slow("......")
    sleep(1)
    type_slow("......")
    sleep(1)
    type_slow("Didn't make any sense? That's fine, it's easy to follow along. Lets continue.")
    sleep(0.5)
    type_slow("Sound good?".colorize(:light_cyan))
    user_5_check = gets.chomp
    case user_5_check
    when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
      type_slow("Ok, lets continue.")
      clear_screen()
    else   
      type_slow("Huhhh... learn to cooperate will you? Anyway, lets continue.".colorize(:light_red))
      clear_screen()
    end
  end  
end



# -- View Help
type_slow("To answer, input numbers 1,2 or 3 to their corresponding questions. If you don't answer correctly, well...".colorize(:light_yellow))
sleep(0.5)
type_slow("you're not helping your own case...".colorize(:red))
sleep(2)