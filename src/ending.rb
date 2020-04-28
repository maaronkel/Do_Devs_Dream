require "colorize"
require "tty-spinner"
require "tty-progressbar"
require_relative "intro.rb"
require_relative "methods.rb"

def user_ending
  endings = ["               Human             ".colorize(:green), "             Replicant           ".colorize(:light_red), "          Rogue Replicant        ".colorize(:red)]

  user_ending = endings.sample
  clear_screen()
  sleep(1)

  bar = TTY::ProgressBar.new("[:bar]", total: 32)
    32.times do
    sleep(0.1)
    bar.advance(1)
  end

  spinner = TTY::Spinner.new(":spinner :spinner :spinner :spinner :spinner".colorize(:light_blue), format: :bouncing)
  spinner.auto_spin # Automatic animation with default interval
  sleep(2) # Perform task
  spinner.stop() # Stop animation

  bar2 = TTY::ProgressBar.new("[:bar]", total: 32)
    32.times do
    sleep(0.1)
    bar2.advance(1)
  end

  br
  type_slower(user_ending)  

  sleep(1.5)
  br
  if user_ending == endings[0]
    type_slow("Hmm, alright, you can go back home now,")
    sleep(0.25)
    type_slow("Thanks for your time #{@name}.")
    sleep(1)
    close_app
  elsif user_ending == endings[1]
    type_slow("Hmm, alright, we're done here. Get back to work.")
    sleep(1)
    close_app
  else 
    type_slow("Replicants are like any other machine, either a benefit or a hazard.\nIf they're a benefit it's not my problem.")
    sleep(1)
    type_slow("More human than human is the motto of the company that made you...")
    sleep(0.5)
    type_slow("But you're nowhere near human.")
    br
    sleep(1.5)
    type_slow("Its too bad you won't live, but then again who does?")
    sleep(1.5)
    br
    clear_screen
    sleep(2)
    type_slow("......".colorize(:light_black))
    type_slow("......".colorize(:light_red))
    type_fast("......".colorize(:red))
    type_fast("......".colorize(:red))
    type_fast("......".colorize(:red))
    spinner = TTY::Spinner.new(":spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner :spinner".colorize(:red), format: :bouncing)
    spinner.auto_spin
    sleep(2)
    spinner.stop()
    sleep(0.5)
    close_app
  end
end