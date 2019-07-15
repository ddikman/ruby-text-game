# helpers
require_relative 'input_output'

# variables
$name = ''

# game functions
def welcome
    write_board('Welcome to the game! (press Ctrl+C to quit)')
end

def ask_name
    $name = ask_user 'First thing is first, what is your name?'
end

def welcome_xrs
    write "Welcome #{$name}!"
end

def favorite_dish()
    favorite_dish = ask_user "So #{$name}, what's your favorite dish?"
    if favorite_dish.downcase != 'fish'
        write "I like #{favorite_dish} too!"
    else
        write "That's crazy!"
    end
end

def intro()
    welcome()
    ask_name()
    welcome_xrs()
end

def game_loop()
    while true do
        favorite_dish()
    end
end

# first run the intro then do the loop
begin
    intro()
    game_loop()
rescue Interrupt => e
    write "\nBye then!"
end