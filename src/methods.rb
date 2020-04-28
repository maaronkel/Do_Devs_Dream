require "colorize"

# -- "clears the screen" 
def clear_screen
  puts `clear`
end

# -- fast typing method
def type_fast(words)
  words.each_char { |char| 
    print char
    sleep(0.02)
  }
  print "\n"
end

# -- Slow Typing method
def type_slow(words)
  words.each_char { |char| 
    print char
    sleep(0.05)
    }
  print "\n"
end

# -- extra slow type
def type_slower(words)
  words.each_char { |char| 
    print char
    sleep(0.1)
    }
  print "\n"
end

# -- slowest type
def type_slowest(words)
  words.each_char { |char| 
    print char
    sleep(0.5)
    }
  print "\n"
end

# -- Adds a space
def br 
  puts
end

  # -- exit the app
def close_app
  br
  clear_screen()
  type_slow("Press any key to Exit.".colorize(:light_yellow))
  answer = gets.chomp
  clear_screen()
end

# -- exit menu section
def close_menu
  puts "Press any key to Continue.".colorize(:light_yellow)
  answer = gets.chomp
  clear_screen()
end