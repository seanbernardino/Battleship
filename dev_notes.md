class Player

Initialize takes:
- name
- playerID << This is either player1 or player2 depending on which player's object is being referred to.

// Methods

current_guess = integer
previous_guess = integer
turn_summary = displays after player guesses and informs them whether they were too high or too low
compare_guess = compares player1 guess with player2 secret number and vice-verse, if any player enters 'resign' store that as current player loses
secret number = stores player's secret number
player_status = displays "winner" if current players wins or "loser" if opponent wins
game_status = "on" if game still ongoing, "over" if either player guessed the other player's secret number


// How to flip active player between player 1 and player 2?

after each "check_guess", if guess is wrong, it flips the active player


