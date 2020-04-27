require "colorize"
require_relative "methods.rb"

# -- ENDING
module Ending
  class EndScreen
    def self.user_ending
      endings = ["Human", "Replicant", "Rogue Replicant"]

      user_ending = endings.sample
      Methods.clear_screen()
      Methods.type_slow("...")
      sleep(1)

      Methods.type_slow(user_ending) # TODO -- add a progress bar/meter
      if user_ending == endings[0]
        Methods.type_slow("Hmm, alright, you can go back home now, thanks for your time.")
        Methods.close_app
      elsif user_ending == endings[1]
        Methods.type_slow("Hmm, alright, we're done here. Get back to work.")
        Methods.close_app
      else 
        Methods.type_slow("I'm afraid I can't let you leave here. 𝘐 𝘵𝘩𝘰𝘶𝘨𝘩𝘵 𝘵𝘰𝘥𝘢𝘺 𝘸𝘢𝘴 𝘨𝘰𝘪𝘯𝘨 𝘵𝘰 𝘣𝘦 𝘦𝘢𝘴𝘺...")
        sleep(0.5)
        Methods.type_slow("...")
        sleep(2)
        Methods.type_slow("Now, I'm not going to run you through the process of what's going to happen next, I'm sure you can guess. There anything left you want to say?")
        retire_user = gets.chomp
        case retire_user
        when "No", "no", "N", "n", "Nah", "nah", "Nope", "nope"
          Methods.type_slow("...")
          sleep (2)
          Methods.close_app() # TODO - add glitch
        else  
          Methods.type_slow("...")
          sleep(0.25)
          Methods.type_slow("...")
          sleep(0.25)
          Methods.type_slow("...")
          sleep (1)    
          Methods.type_slow("Well, it't not my job to be sympathetic... You're just unlucky I'm working today...")
          sleep (2)
          Methods.close_app() # TODO - add glitch
        end
      end
    end
  end
end
