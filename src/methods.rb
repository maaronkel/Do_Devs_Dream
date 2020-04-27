class Methods
  def initialize(name, clear_screen, type_slow, br, close_app)
    @@name = name
    @clear_screen = clear_screen
    @type_slow = type_slow()
    @br = br
    @close_app = close_app
  end

  # -- "clears the screen" 
  def self.clear_screen
    puts `clear`
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
    type_slow("Do you wish to exit?")
    answer = gets.chomp
    case answer
    when "yes", "Yes", "YES", "y", "Y"
        sleep(2)
        clear_screen()

    when "no", "No", "NO", "n", "N"
        sleep(2)
        clear_screen()
    else
        clear_screen()
        type_slow("Invalid Repsonse.")
        waits(1)
        br()
        br()
        type_slow("Bye !")
        waits(2)
        clear_screen()
    end
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

