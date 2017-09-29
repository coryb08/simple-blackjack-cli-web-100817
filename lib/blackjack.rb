def welcome
  puts "Welcome to the Blackjack Table";
end

def deal_card
  return rand(2..10);
end

def display_card_total(cardtotal)
  puts "Your cards add up to #{cardtotal}";
  # hit?(card_total);
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay";
end

def get_user_input
  return gets.split.chomp;
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!";
end

def initial_round
  total = deal_card + deal_card;
  display_card_total(total);
  # hit?(total);
  return total
end

def hit?(num)
  prompt_user;
  newCard = deal_card;

  newtotal = num + newCard;
  answer = get_user_input;
  if (answer != 'h') && (answer != 's')
    invalid_command;
    prompt_user;
  elsif (answer === 'h') && (newtotal > 21)
      return end_game(newtotal);
  elsif (answer === 'h') && (newtotal <= 21)
      display_card_total(newtotal);
      card_total = newtotal
      return
  else
    return;
  end
end

def invalid_command
  puts "Please enter a valid command";
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome;
  initial_round
  card_total = initial_round
  while card_total <= 21
    hit?(card_total)
  end

end


#
#
# def deal_card
#   # code #deal_card here
#     rand(2..10)
# end
#
# def display_card_total(card_total)
#   # code #display_card_total here
#   puts "Your cards add up to #{card_total}"
#   return card_total
# end
#
# def welcome
#   # code #welcome here
#   puts "Welcome to the Blackjack Table"
# end
#
# def prompt_user
#   # code #prompt_user here
#   puts "Type 'h' to hit or 's' to stay"
# end
#
# def initial_round
#   # code #initial_round here
#   sum = deal_card + deal_card
#   display_card_total(sum)
# end
#
# def end_game(card_total)
#   # code #end_game here
#     puts "Sorry, you hit #{card_total}. Thanks for playing!"
# end
#
# def get_user_input
#   # code #get_user_input here
#   gets.strip.chomp
# end
#
# def hit? (card_total)
#   # code hit? here
#   prompt_user
#   if get_user_input == 'h'
#     card_total += deal_card
#   end
#     card_total
# end
#
# def invalid_command
#   # code invalid_command here
#   puts "Please enter a valid command"
# end
#
# #####################################################
# # get every test to pass before coding runner below #
# #####################################################
#
# def runner
#   # code runner here
#   welcome
#   card_total = initial_round
#   while card_total < 21
#     card_total = hit?(card_total)
#     card_total = display_card_total(card_total)
#   end
#   end_game(card_total)
#
# end
