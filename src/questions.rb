require "colorize"
require "tty-spinner"

require_relative "methods.rb"

# -- Loops through each quesion
def question_loop
  type_slow("If you don't input one of the given answers, well...".colorize(:light_yellow))
  sleep(0.5)
  type_slow("         ...you're not helping your case           ".colorize(:red))
  sleep(1)
  br
  type_slow("                      STARTING                      ")
  br

  spinner = TTY::Spinner.new("                         :spinner".colorize(:light_blue), format: :spin)
  spinner.auto_spin # Automatic animation with default interval
  sleep(2) # Perform task
  spinner.stop() # Stop animation
  
  clear_screen
  sleep(1)
  type_slow("Alright, I'm going to ask you a series of questions, just relax and answer them as simply as you can.")
  sleep(2)
  clear_screen

  questions = [
    ["Someone gives you a calfskin wallet for your birthday. How do you react?", "I wouldn't accept it ", "Say, 'Thank you for the wallet!'", "I would appreciate it"],
    ["You've got a little boy, he shows you his butterfly collection, plus the\nkilling jar. What do you say?", "'Oh, lovely!'", "'That's nice, but why don't you keep the killing jar for yourself?'", "I take him to the doctor"],
    # ["You're watching television. Suddenly you realise there's a wasp crawling\non your arm. How do you react?", "I kill it", "I swat it away", "I scream, then grab the closest object to me (which happens to be my copy\nof 'Clean Code: A Handbook of Agile Software Craftsmanship') and beat\nthe hell out of it"],
    # ["Now and then you contemplate life alone. It is...", "Scary", "Boring", "Intriguing"],
    # ["Describe in single words only the good things that come to mind about your mother.", "Care, warm voice, cookies", "Eat. Your. Vegetables", "..."],
    # ["React to this: You're watching a stage play. A banquet is in progress.\nThe guests are enjoying an appetizer of raw oysters. The entree consists\nof boiled dog stuffed with rice. The raw oysters are less acceptable to you\nthan a dish of boiled dog.", "I don't eat, only drink coffee.", "I wouldn't eat boiled dog.", "What stage play am I watching?"],
    # ["At a party, a guest boasts of their perfect life. How do you respond?", "I try to outdo them", "I film them and post it on social media complaining about it", "I sit silently"],
    ["While walking along in desert sand, you suddenly look down and see a\ntortoise crawling toward you. You reach down and flip it over onto its\nback. The tortoise lies there, its belly baking in the hot sun,\nbeating its legs, trying to turn itself over, but it cannot do so\nwithout your help. You are not helping. Why?", "What do you mean, I'm not helping?", "What is a tortoise?", "I don't know why I would want to flip it over in the first place"],
    ["A friend offers you tequila. In the glass lies a worm. Time to...", "Drink it and enjoy the ritual", "Why would a worm be in my glass?", "Say 'No thanks, I'm the designated driver for tonight'"],
    ["You're reading a magazine. You come across a full-page nude photo\nof a girl or guy. You show it to your partner, who likes it so much,\nthey hang it on your bedroom wall. The girl/guy is lying on a bearskin rug.", "I would take it down", "I don't really care", "Huh?"],
    ["It is 'Bring Your Kids to Work Day'. Your child misbehaves, and is slapped\nby the boss. What is your reaction?", "Horror", "About Damn Time", "Jealousy"],
    ["Ok, last one. You pass a homeless person. Cold night. Big city. You fumble for change, but a $10 note drops into their lap. You...", "Ask them to give it back", "Let them keep it", "Say 'You can buy a Coding Bootcamp Course on Udemy now'"],
  ]

  questions.each do |question|
    type_slow(question[0])
    sleep(0.5)
    br
    puts question[1]
    sleep(0.5)
    puts question[2]
    sleep(0.5)
    puts question[3]
    sleep(0.5)
    br
    user_input = gets.chomp.to_i
    case user_input
    when 1, 2, 3
      clear_screen
    else
      sleep(1)
      br
      type_slow("...Answer the next question seriously please.")
      sleep(1)
      clear_screen
    end
  end
end


