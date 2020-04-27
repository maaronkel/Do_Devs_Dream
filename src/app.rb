require_relative "intro.rb"
require_relative "test.rb"
require_relative "ending.rb"
require_relative "methods.rb"

Intro::Welcome.welcome_msg
Intro::Welcome.help_menu
Intro::Welcome.info_menu
TheTest::QuestionLoop.loop_questions
Ending::EndScreen.user_ending