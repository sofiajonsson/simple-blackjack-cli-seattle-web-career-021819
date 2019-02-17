def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11) 
end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end


def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  return card_total
end


def hit?(card_total)
  prompt_user #asking user if they want to hit or stay
  user_input = get_user_input #sets a var to use for  if/else statement
  if user_input == "h"
    card_total += deal_card #Incraments the prior total by the new number dealt by dealing another card
  elsif user_input == "s"
    card_total #return the number and prompt user to hit again
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
 
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
def runner
  welcome #introduces the game
  sleep 0.75
  card_total = initial_round #est. current total + lets user know what number they have at the moment
  until card_total > 21 #continue game until user loses
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out when user has lost
end

runner 
    
