require "colorize"
require_relative "methods.rb"

module Intro
  # -- WELCOME SCREEN
  class Welcome
    def self.welcome_msg
      Methods.clear_screen()
      sleep(0.5)
      Methods.type_slow("Welcome to ...")
      Methods.br
      sleep(0.5)
      Methods.type_slower("Do Devs Dream of Electric Sheep?".colorize(:red))
      Methods.br
      sleep(3)
      Methods.clear_screen()
      Methods.type_slow("This is going to be a...simple test")
      Methods.br
      sleep(0.5)
      Methods.type_slow("So no need to feel anxious. Relax, and follow the onscreen intructions, I'm sure everything will be fine.")
      Methods.type_slow("Anyway...")
      sleep(1)
      Methods.type_slow("Ready to get started?".colorize(:light_cyan))
      user_check = gets.chomp
      case user_check
      when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
        Methods.type_slow("Lets begin with an introduction.")
        sleep(0.5)
        Methods.clear_screen()
      else
        Methods.type_slow("Well, you're here now, so lets begin with an introduction.")
        sleep(0.5)
        Methods.clear_screen()
      end
      sleep(1)
      Methods.type_slow("Alright, so it says here you are...")
      ## TODO - add blinking cursor
      @name = gets.chomp
      Methods.clear_screen
      Methods.type_slow("Ahh that's right, take a seat #{@name}. I'm Rick Deckard, a Blade Runner, I'm sure you know what my job is?")
      user_2_check = gets.chomp
      case user_2_check
      when "yes", "ye" "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
        Methods.type_slow("Ok, lets continue.")
        Methods.clear_screen()
      else
        Methods.type_slow("I have to hunt down rogue replicants who have gone against their creators orders. I'm running this test randomly to see if you're one of the people I'm looking for. Sometimes I have to... retire them. So I'm hoping that you're human, as it'll make my day a little easier. Sound alright?")
        user_3_check = gets.chomp
        case user_3_check
        when "No", "no", "N", "n", "nah", "Nah"
          Methods.type_slow("Hmm, well, we're going to carry on anyway.")
          Methods.clear_screen()
        when "retire?", "Retire?", "replicants?", "Replicants?", "huh?", "Huh?", "huh", "Huh", "what?", "What?", "what", "What", "whats a replicant?", "Whats a replicant?"
          sleep(0.5)
          Methods.type_slow("Replicants are an advanced form of AI, physically identical to humans, engineered for degrading work like slave labour, war, etc. Blade Runners like myself have to retire (assasinate) a replicant when they're deemed \"rogue\"...")
          sleep(2)
          Methods.type_slower("...")
          sleep(1)
          Methods.type_slow("You're not trying to trick me into thinking you \"don't know what a replicant is?\"... ?")
          sleep(0.5)
          Methods.type_slow("Hmm, anyway...")
          sleep(0.5)
          Methods.clear_screen()
        else
          Methods.clear_screen()
        end
      end
      sleep(2)
      Methods.type_slow("Now, do you know what type of test this is?")
      user_4_check = gets.chomp
      Methods.clear_screen()
      case user_4_check
      when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
        Methods.type_slow("Ok, lets continue.")
        Methods.clear_screen()
      else   
        Methods.type_slow("Huhhh, alright, well... it's essentially an advanced form of a lie detector test that measures contractions of the iris and the presence of invisible airborne particles emitted from the body. It's primarly used by people like me, Blade Runners, to determine if a suspect is truly human by measuring the degree of their empathic response through carefully worded questions and statements.")
        sleep(1) 
        ## TODO - add a blinking cursor instead of the .......
        Methods.type_slower("......")
        sleep(1)
        Methods.type_slower("......")
        sleep(1)
        Methods.type_slower("......")
        sleep(1)
        Methods.type_slow("Doesn't make any sense? That's fine, it's easy to follow along. Anyway...")
        sleep(0.5)
        Methods.clear_screen()
        Methods.type_slow("Sound good?".colorize(:light_cyan))
        user_5_check = gets.chomp
        case user_5_check
        when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
          Methods.type_slow("Ok, lets continue.")
          Methods.clear_screen()
        else   
          Methods.type_slow("Hmphh... learn to cooperate will you? Anyway, lets continue.".colorize(:light_red))
          Methods.clear_screen()
        end
      end
    end
    # -- View Help
    def self.help_menu
      Methods.type_slow("Do you wish to view the Help Menu?".colorize(:light_yellow))
      user_input = gets.chomp
      case user_input
      when "No", "no", "N", "n", "Nah", "nah", "nope", "Nope"
        Methods.clear_screen()
      else
        Methods.clear_screen()
        sleep(1)
        puts "Help"
        Methods.br
        sleep(2)
        Methods.type_slow("Have you read it all?".colorize(:light_yellow))
        user_input = gets.chomp
        case user_input
        when "No", "no", "N", "n", "Nah", "nah", "nope", "Nope"
          Methods.br
          Methods.type_slow("Well, we've got to hurry this thing along.".colorize(:light_yellow))
          Methods.clear_screen()
        else 
          Methods.br
          Methods.type_slow("Lets keep going.".colorize(:light_yellow))
          Methods.clear_screen()
        end
      end
      sleep(1)
    end
    # -- View Info
    def self.info_menu
      Methods.type_slow("Do you wish to view the Info Menu? (background information regarding the test, inspiration, characters etc)".colorize(:light_yellow))
      user_input = gets.chomp
      case user_input
      when "No", "no", "N", "n", "Nah", "nah", "nope", "Nope"
        Methods.clear_screen()
      else
        Methods.clear_screen()
        sleep(1)
        puts "Info"
        Methods.br
        sleep(2)
        Methods.type_slow("Have you read it all?".colorize(:light_yellow))
        user_input = gets.chomp
        case user_input
        when "No", "no", "N", "n", "Nah", "nah", "nope", "Nope"
          Methods.br
          Methods.type_slow("Well, you can read up more about this later if you like.".colorize(:light_yellow))
          sleep(1)
          Methods.clear_screen()
        else 
          Methods.clear_screen()
        end
      end
      Methods.type_slow("Time to get to the test.".colorize(:light_yellow))
      sleep(1)
    end
  end
end