
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == "h"
    current_total +=deal_card
    return (current_total)
  elsif input == "s"
    return (current_total)
  else
    invalid_command(current_total)
  end

end

def invalid_command(num)
  hit?(num)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  if num <= 21
    until num > 21
      new_num = hit?(num)
      num = new_num
      display_card_total(num)

    end
  end
  end_game(num)

end
