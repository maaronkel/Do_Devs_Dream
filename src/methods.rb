require "colorize"

class Methods
  def initialize(name, clear_screen, type_fast, type_slow, br, close_app)
    @@name = name
    @clear_screen = clear_screen
    @type_fast = type_fast()
    @type_slow = type_slow()
    @type_slower = type_slower()
    @type_slowest = type_slowest()
    @br = br
    @close_app = close_app
  end

  # -- "clears the screen" 
  def self.clear_screen
    puts `clear`
  end

  # -- fast typing method
  def self.type_fast(words)
    words.each_char { |char| 
      print char
      sleep(0.02)
      }
    print "\n"
  end

  # -- Slow Typing method
  def self.type_slow(words)
    words.each_char { |char| 
      print char
      sleep(0.05)
      }
    print "\n"
  end

  # -- extra slow type
  def self.type_slower(words)
    words.each_char { |char| 
      print char
      sleep(0.1)
      }
    print "\n"
  end

  # -- slowest type
    def self.type_slowest(words)
    words.each_char { |char| 
      print char
      sleep(0.5)
      }
    print "\n"
  end

  # -- Adds a space
  def self.br 
    puts
  end

  # -- a way to exit the app at the end
  def self.close_app
    br
    clear_screen()
    type_slow("Press any key to Exit.".colorize(:light_yellow))
    answer = gets.chomp
    clear_screen()
  end
end

# -- not using for now

# class Menu
#   attr_accessor :menu_prompt, :main_menu_prompt, :help_menu_prompt
#   def initialize
#     @menu_prompt = menu_prompt
#     @main_menu_prompt = main_menu_prompt
#     @help_menu_prompt = help_menu_prompt
#   end
#   def main_menu_prompt
#     prompt = TTY::Prompt.new
#     menu_prompt = prompt.select("Do Devs Dream of Electric Sheep?", %w(Start Help Info Exit)) 
#     if menu_prompt == "Start"
#       puts `clear`
#     elsif menu_prompt == "Help"
#       @help_menu_prompt
#     elsif menu_prompt == "Info"
#       puts `clear`
#       puts "Info Screen"
#     elsif menu_prompt == "Exit"
#       puts `clear`
#     end
#   end
# end

