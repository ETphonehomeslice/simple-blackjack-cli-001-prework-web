require 'pry'

def dealer_hit_announcement
  puts "The dealer hits!"
end

def hit_dealer(dealer_card_total)
  dealer_card_total += deal_card
  return dealer_card_total
end

def dealer_initial_round
  dealer_card_total = deal_card + deal_card
  display_dealer_card_total(dealer_card_total)
  return dealer_card_total
end

def display_dealer_card_total(dealer_card_total)
  puts "The dealer's cards add up to #{dealer_card_total}"
end

def dealer_loop(card_total, dealer_card_total)
  loop do
    if dealer_card_total < card_total
      dealer_hit_announcement
      dealer_card_total = hit_dealer(dealer_card_total)
    elsif dealer_card_total > card_total && dealer_card_total < 21
       display_dealer_card_total(dealer_card_total)
       return you_lose
     elsif dealer_card_total > 21
       return "You beat the dealer!"
    end
  end
end

def you_lose
  puts "You lost!"
  return play_again?
end
