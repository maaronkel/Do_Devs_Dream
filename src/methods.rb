# class Functions
#   def initialize(type_slow)
#     @type_slow = type_slow
#   end
# end

# -- Slow Typing method
def type_slow(words)
  words.each_char { |char| 
    print char
    sleep(0.05)
    }
  print "\n"
end

# -- Adds a space
def br 
  puts
end

# -- not using for now

# module MainMenu
#   class Menu
#     attr_accessor :menu_prompt, :main_menu_prompt, :help_menu_prompt
#     def initialize
#       @menu_prompt = menu_prompt
#       @main_menu_prompt = main_menu_prompt
#       @help_menu_prompt = help_menu_prompt
#     end
#     def main_menu_prompt
#       prompt = TTY::Prompt.new
#       menu_prompt = prompt.select("Do Devs Dream of Electric Sheep?", %w(Start Help Info Exit)) 
#       if menu_prompt == "Start"
#         puts `clear`
#       elsif menu_prompt == "Help"
#         @help_menu_prompt
#       elsif menu_prompt == "Info"
#         puts `clear`
#         puts "Info Screen"
#       elsif menu_prompt == "Exit"
#         puts `clear`
#       end
#     end
#   end
# end

