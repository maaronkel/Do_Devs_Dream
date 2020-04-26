# require_relative 'methods.rb'

# -- TEST
class StartTest
  questions = [
    { question: "Someone gives you a calfskin wallet for your birthday. How do you react?", answers: ["one", "two", "three"]},
    { question: "Your little boy shows you his butterfly collection, plus the killing jar. What do you say?", answers: ["idk", "lol", "fkoff"]},
    { question: "You're watching television. Suddenly you spot a wasp crawling on your arm. How do you react?", answers: ["uno", "duo", "tre"]},
    { question: "While walking along in desert sand, you suddenly look down and see a tortoise crawling toward you. You reach down and flip it over onto its back. The tortoise lies there, its belly baking in the hot sun, beating its legs, trying to turn itself over, but it cannot do so without your help. You are not helping. Why?", answers: ["one", "two", "three"]},
    { question: "Describe in single words only the good things that come to mind about your mother.", answers: ["one", "two", "three"]},
    { question: "React to this: You're watching a stage play. A banquet is in progress. The guests are enjoying an appetizer of raw oysters. The entree consists of boiled dog stuffed with rice. The raw oysters are less acceptable to you than a dish of boiled dog.", answers: ["one", "two", "three"]},
    { question: "You pass a homeless person. Cold night. Big city. You fumble for change, but a £10 note drops into their lap. You...", answers: ["one", "two", "three"]},
    { question: "A friend offers you tequila. In the glass lies a worm. Time to...", answers: ["one", "two", "three"]},
    { question: "Now and then you contemplate life alone. It is...", answers: ["one", "two", "three"]},
    { question: "At a party, a guest boasts of their perfect life. How do you respond?", answers: ["one", "two", "three"]},
    { question: "You're reading a magazine. You come across a full-page nude photo of a girl or guy. You show it to your partner, who likes it so much, they hang it on your bedroom wall. The girl/guy is lying on a bearskin rug.", answers: ["one", "two", "three"]},
    { question: "You're At A Circus When The Elephant Fails To Perform Its Trick. As A Result, The Trainer Shocks Him With A Cattle Prod. How Do You React?", answers: ["one", "two", "three"]},
  ]
end

  # -- getting question
  # puts questions[0].values[0]
  # puts questions[1].values[0]
  # sleep(2)


  # TODO - logic for User to select one of the three answers
  # user_answer = gets.chomp
  # sleep(0.5)
  # case user_answer
      # when "1"
      #   puts `clear`
      #   puts "Next question..."
      # when "2"
      #   puts `clear`
      #   puts "Next question..."
      # when "3"
      #   puts `clear`
      #   puts "Next question..."
      # else 
      #   puts "..."
      #   sleep(0.5)
      #   puts "Please take this seriously and just answer the question."
      # end

  # TODO - loop to ask all 12 questions

  # -- displaying answers to the User
  # puts questions[1].values[1]
  # puts questions[0].values[1]
  # sleep(0.5)
  # puts "Please choose an answer"
  # user_input = gets.chomp.to_i
  # sleep(0.5)
  # case user_input
  # when 1
  #   puts `clear`
  #   puts "Next question..."
  # when 2
  #   puts `clear`
  #   puts "Next question..."
  # when 3
  #   puts `clear`
  #   puts "Next question..."
  # else 
  #   puts "..."
  #   sleep(0.5)
  # end
  # puts `clear`
  # puts "Next question..."

  # def showing_question
  #   num_of_q = 0
  #   loop do
  #     num_of_q += 1
  #     if num_of_q == 12
  #       break         
  #   end
  #   return self

    # num_of_q = 12

    # def get_question
    #   questions.values
    # end

  # for questions in get_question do
  #   sleep(0.5)
  #   puts "Please choose an answer"
  #   user_input = gets.chomp.to_i
  #   sleep(0.5)
  #   case user_input
  #   when 1
  #     puts `clear`
  #     puts "Next question..."
  #   when 2
  #     puts `clear`
  #     puts "Next question..."
  #   when 3
  #     puts `clear`
  #     puts "Next question..."
  #   else 
  #     puts "..."
  #     sleep(0.5)
  #   end
  #   puts `clear`
  #   puts "Next question..."
  # end


  # TODO - future feature, randomly iterate through the questions and selects a question
  # puts questions.sample


# -- ENDING

endings = ["Human", "Replicant", "Rogue Replicant"]

user_ending = endings.sample
puts "..."
sleep(1)
puts user_ending

if user_ending == endings[0]
  puts "Hmm, alright, you can go back home now, thanks for your time matt"
  @main_menu_prompt
elsif user_ending == endings[1]
  puts "Hmm, alright, we're done here. Get back to work."
else 
  puts "You're way too unstable, I'm afraid I can't let you leave here alive. And here I thought today was going to be easy"
  sleep(0.5)
  puts "..."
  sleep(2)
  puts "There anything left you want to say?"
  retire_user = gets.chomp
  if retire_user == "No"
    puts "..."
    sleep (1)
    # TODO - add glitch
  else  
    puts "..."
    sleep(0.25)
    puts "..."
    sleep(0.25)
    puts "..."
    sleep (1)    
    puts "Well, it't not my job to be sympathetic... You're just unlucky I was working today..."
    # TODO - add glitch
  end
end