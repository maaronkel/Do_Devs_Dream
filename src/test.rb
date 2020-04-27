# require_relative 'methods.rb'
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

# -- Adds a space
def br 
  puts
end


# -- TEST
class StartTest
  questions = [
    ["Someone gives you a calfskin wallet for your birthday. How do you react?", "I wouldn't accept it ", "Say, 'Thank you for the wallet!'", "I would appreciate it"],
    ["You've got a little boy, he shows you his butterfly collection, plus the killing jar. What do you say?", "'Oh, lovely!'", "'That's nice, but why don't you keep the killing jar for yourself?'", "I take him to the doctor"],
    ["You're watching television. Suddenly you realise there's a wasp crawling on your arm. How do you react?", "I kill it", "I swat it away", "I scream, then grab the closest object to me (which happens to be my copy of 'Clean Code: A Handbook of Agile Software Craftsmanship') and beat the hell out of it"],
    ["While walking along in desert sand, you suddenly look down and see a tortoise crawling toward you. You reach down and flip it over onto its back. The tortoise lies there, its belly baking in the hot sun, beating its legs, trying to turn itself over, but it cannot do so without your help. You are not helping. Why?", "What do you mean, I'm not helping?", "What is a tortoise?", "I don't know why I would want to flip it over in the first place"],
    ["Describe in single words only the good things that come to mind about your mother.", "Care, warm voice, cookies", "Eat. Your. Vegetables", "..."],
    ["React to this: You're watching a stage play. A banquet is in progress. The guests are enjoying an appetizer of raw oysters. The entree consists of boiled dog stuffed with rice. The raw oysters are less acceptable to you than a dish of boiled dog.", "I only drink coffee.", "I wouldn't eat boiled dog.", "What stage play am I watching?"],
    ["A friend offers you tequila. In the glass lies a worm. Time to...", "Drink it and enjoy the ritual", "Why would a worm be in my glass?", "Say 'No thanks, I'm the designated driver for tonight'"],
    ["Now and then you contemplate life alone. It is...", "Scary", "Boring", "Intriguing"],
    ["At a party, a guest boasts of their perfect life. How do you respond?", "I try to outdo them", "I film them and post it on social media complaining about it", "I sit silently"],
    ["You're reading a magazine. You come across a full-page nude photo of a girl or guy. You show it to your partner, who likes it so much, they hang it on your bedroom wall. The girl/guy is lying on a bearskin rug.", "I would take it down", "I don't really care", "Huh?"],
    ["It is 'Bring Your Kids to Work Day'. Your child misbehaves, and is slapped by the boss. What is your reaction?", "Horror", "About damn time", "Jealousy"],
    ["Ok, last one. You pass a homeless person. Cold night. Big city. You fumble for change, but a £10 note drops into their lap. You...", "Ask them to give it back", "Let them keep it", "Say 'You can buy a Coding Bootcamp Course on Udemy now'"],
  ]

  clear_screen()
  sleep(1)
  type_slow("Alright, I'm going to ask you a series of questions, just relax and answer them as simply as you can.")
  sleep(2)
  clear_screen()

  questions.each do |question|
    type_slow(question[0])
    sleep(2.5)
    type_slow(question[1])
    sleep(0.5)
    type_slow(question[2])
    sleep(0.5)
    type_slow(question[3])
    sleep(0.5)
    user_input = gets.chomp.to_i
    case user_input
    when 1, 2, 3
      clear_screen()
    else
      sleep(1)
      type_slow("...Answer the next question seriously please.")
      sleep(1)
      clear_screen()
    end
  end


# -- ENDING

  # endings = ["Human", "Replicant", "Rogue Replicant"]

  # user_ending = endings.sample
  # type_slow("...")
  # sleep(1)
  # type_slow(user_ending) # TODO -- add a progress bar/meter

  # if user_ending == endings[0]
  #   type_slow("Hmm, alright, you can go back home now, thanks for your time.")
  #   type_slow(exit_app("Press enter to Exit"))
  # elsif user_ending == endings[1]
  #   type_slow("Hmm, alright, we're done here. Get back to work.")
  #   type_slow(exit_app("Press enter to Exit"))
  # else 
  #   type_slow("I'm afraid I can't let you leave here. 𝘐 𝘵𝘩𝘰𝘶𝘨𝘩𝘵 𝘵𝘰𝘥𝘢𝘺 𝘸𝘢𝘴 𝘨𝘰𝘪𝘯𝘨 𝘵𝘰 𝘣𝘦 𝘦𝘢𝘴𝘺..."
  #   sleep(0.5)
  #   type_slow("...")
  #   sleep(2)
  #   type_slow("Now, I'm not going to run you through the process of what's going to happen next, I'm sure you can guess. There anything left you want to say?")
  #   retire_user = gets.chomp
  #   case retire_user
  #   when "No", "no", "N", "n", "Nah", "nah", "Nope", "nope"
  #     type_slow("...")
  #     sleep (2)
  #     close_app() # TODO - add glitch
  #   else  
  #     type_slow("...")
  #     sleep(0.25)
  #     type_slow("...")
  #     sleep(0.25)
  #     type_slow("...")
  #     sleep (1)    
  #     type_slow("Well, it't not my job to be sympathetic... You're just unlucky I'm working today...")
  #     sleep (2)
  #     close_app() # TODO - add glitch
  #   end
  # end
end