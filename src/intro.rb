require "colorize"

require_relative "methods.rb"

class UserName
  def initialize(name)
    @name = name
  end
end

# -- Starts Welcome Screen + followed by introduction
def start_game
  clear_screen
  sleep(0.5)
  type_slow("Welcome to ...".colorize(:light_black))
  br
  sleep(0.5)
  type_slower("Do Devs Dream of Electric Sheep?".colorize(:red))
  br
  sleep(2)
  clear_screen
  type_slow("This is going to be a...simple test")
  br
  sleep(1)
  type_slow("So lets begin with an introduction.")
  sleep(1)
  clear_screen
  type_slow("Alright, so it says here your name is...".colorize(:light_cyan))
  br
  sleep(0.5)
  @name = gets.chomp
  clear_screen
  sleep(0.5)
  type_slow("That's right, take a seat #{@name}.\nI'm Rick Deckard, a Blade Runner,")
  sleep(0.5)
  type_slow("I'm sure you know what my job is?".colorize(:light_cyan))
  br
  sleep(0.5)
  user_2_check = gets.chomp
  case user_2_check
  when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
    br
    sleep(0.5)
    clear_screen
  else
    br
    sleep(0.5)
    type_slow("I have to hunt down rogue replicants who have gone against their creators\norders. I'm running this test randomly to see if you're one of the\npeople I'm looking for. Sometimes I have to... retire them. So I'm hoping\nthat you're a human, as it'll make my day a little easier.")
    type_slow("Sound alright?".colorize(:light_cyan))
    br
    sleep(0.5)
    user_3_check = gets.chomp
    case user_3_check
    when "No", "no", "N", "n", "nah", "Nah"
      br
      sleep(0.5)
      type_slow("Hmm, well, we're going to carry on anyway.")
      sleep(0.5)
      clear_screen()
    when "retire?", "Retire?", "replicants?", "Replicants?", "huh?", "Huh?", "huh", "Huh", "what?", "What?", "what", "What", "whats a replicant?", "Whats a replicant?"
      br
      sleep(0.5)
      type_slow("Replicants are an advanced form of AI, physically identical to humans,\nengineered for degrading work like slave labour, war, etc. Blade Runners\nlike myself have to retire (assasinate) a replicant when\nthey're deemed \"rogue\"...")
      sleep(3)
      type_slow("You're not trying to trick me into thinking\nyou \"don't know what a replicant is\"are you... ?")
      sleep(0.5)
      type_slow("Hmm, anyway...")
      sleep(1)
      clear_screen
    else
      clear_screen
    end
  end
  type_slow("Now, do you know what type of test this is?".colorize(:light_cyan))
  br
  sleep(0.5)
  user_4_check = gets.chomp
  clear_screen
  case user_4_check
  when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
    sleep(0.5)
  else   
    sleep(0.5)
    type_slow("Huhhh, alright, well... it's essentially an advanced form of\na lie detector test that measures contractions of the iris\nand the presence of invisible airborne particles emitted from the body.\nIt's primarly used by people like me, Blade Runners, to determine if a\nsuspect is truly human by measuring the degree of their empathic response\nthrough carefully worded questions and statements.")
    sleep(1)
    type_slower("......".colorize(:light_black))
    br
    sleep(0.5)
    type_slow("Doesn't make any sense? That's fine, it's easy to follow along. Anyway...")
    sleep(1.5)
    clear_screen
    type_slow("Sound good so far?".colorize(:light_cyan))
    br
    sleep(0.5)
    user_5_check = gets.chomp
    case user_5_check
    when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
      sleep(0.5)
      br
      type_slow("Ok, lets continue.")
      sleep(0.5)
      clear_screen
    else  
      br
      type_slow("Hmphh... learn to cooperate will you? Anyway, lets continue.".colorize(:light_red))
      sleep(0.5)
      clear_screen
    end
  end
end

# -- View Help
def help_menu
  type_slow("Do you wish to view the Help Menu?".colorize(:light_yellow))
  br
  sleep(0.5)
  user_input = gets.chomp
  case user_input
  when "No", "no", "N", "n", "Nah", "nah", "nope", "Nope"
    sleep(0.5)
  else
    sleep(0.5)
    clear_screen
    sleep(1)
    puts "Help".colorize(:light_yellow)
    puts "How will the Test work?".colorize(:light_black)
    puts "You will be prompted to answer 12 questions, upon finishing the test,\nthe program will show you what you are and give you\na unique ending out of a possible 3. Being;\nHuman (Your safe)\nReplicant (Acceptable)\nRogue Replicant (You get retired - killed)"
    br
    puts "How to Play?".colorize(:light_black)
    puts "To answer the questions, input numbers 1,2 or 3. If you don't answer\ncorrectly, the program will warn you to answer properly next time."
    br
    close_menu
  end
end

# -- View Info
def info_menu
  type_slow("Do you wish to view the Info Menu? (background information regarding\nthe test, inspiration, characters etc)".colorize(:light_yellow))
  br
  sleep(0.5)
  user_input = gets.chomp
  case user_input
  when "No", "no", "N", "n", "Nah", "nah", "nope", "Nope"
    sleep(0.5)
  else
    sleep(0.5)
    clear_screen
    sleep(1)
    puts "Info".colorize(:light_yellow)
    puts "What is this 'Test'?".colorize(:light_black)
    puts "This program is based off a machine called the Voight Kampff\nfrom the 1982 film Blade Runner, and its loosely based insipiration,\n'Do Androids Dream of Electric Sheep?', hence the name of this App.\nThe machine is used to test subjects, and deem whether they are a\nHuman or Replicant."
    br
    puts "Whats a Replicant?".colorize(:light_black)
    puts "A Replicant, is the name of an advanced genetically engineered being,\nphysically identitcal to humans. In the film, they are used for degrading\nwork like slave labour, soldiers in war, etc. Because of the life\nthey are forced into, some of them become unstable, and try to overthrow\ntheir creators. At the end of the test, you will be shown if\nyou're really a Human or not...(sort of)"
    br
    close_menu
  end
  sleep(0.5)
  type_slow("Time to get to the test.".colorize(:light_yellow))
  sleep(1)
  clear_screen
end