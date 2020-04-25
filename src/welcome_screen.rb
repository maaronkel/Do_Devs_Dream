class Welcome
  def initialize
    @welcome_msg = welcome_msg
    @intro_msg = intro_msg    
  end
  def welcome_msg
    puts "Welcome to" ## TODO - add logo
    sleep(2)
    puts "This is just a... simple...test"
    sleep(2)
    puts "So no need to feel worked up or anxious. Just relax, and follow the onscreen intructions, I'm sure everything will be fine. Anyway..."
    sleep(4)
    puts "Ready to get started?"
  end
  def intro_msg
    start_test = gets.chomp
    case start_test
    when "yes", "ye" "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
      puts "Lets start with an introduction shall we?"
    else
      puts "Well, you're here now, so lets start with an introduction shall we?"
    end
    sleep(2)
    puts "Alright, so it says here you are..."
    ## TODO - add tty-cursor for blinking cursor
    name = gets.chomp
    puts "Ah #{name}, well I'm Rick Deckard, a Blade Runner, I'm sure you know what my job is?"
    deckard_check = gets.chomp
    case deckard_check
    when "yes", "ye" "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
      puts "Hmm great, lets start."
    else
      puts "Well I have to hunt down rogue replicants who have gone against their creators orders. I'm running this test randomly to see if you're one of the people I'm looking for. Sometimes I have to... 'retire' them, so lets hope this time is different, just so it makes my day a little easier."
    end
    sleep(2)
    puts "Now, do you know what type of test this is?"
    test_check = gets.chomp
    case test_check
    when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
      puts "Great, lets continue."
    else   
      puts "Hrhh, alright, well... its essentially an advanced form of a lie detector test that measures contractions of the iris and the presence of invisible airborne particles emitted from the body. It's primarly used by people like me, to determine if a suspect is truly human by measuring the degree of his empathic response through carefully worded questions and statements. "
    end
    sleep(8) ## TODO - add a blinking cursor and repeated, slow ........ 
    puts "......"
    sleep(2)
    puts "......"
    sleep(2)
    puts "......"
    sleep(3)
    puts "If that didn't make any sense to you, that's fine. All you need to do is answer the series of questions I ask."
    sleep(3)
    puts "Sound good?"
    test_confuse_check = gets.chomp
    case test_confuse_check
    when "yes", "ye", "y", "Y", "Yes", "Yeah", "yeah", "Yep", "yep"
      puts "Great, lets continue."
    else   
      puts "*Big Sigh* Hmm... learn to cooperate will you? You're going to make this day take way longer then it needs to. So, lets continue."
    end  
  end
end
