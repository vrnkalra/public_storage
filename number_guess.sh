#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"

echo "Enter your username:"
read USERNAME

# check if the user exists in DB by getting user id
USER_EXIST=$($PSQL "SELECT user_id from users where username='$USERNAME'")

# if not exist
if [[ -z $USER_EXIST ]]; then
  # add user to db
  ADD_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
  USER_EXIST=$($PSQL "SELECT user_id from users where username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # get user game count and best game guesses
  # USER_NAME_DB=$($PSQL "SELECT username from users where user_id=$USER_EXIST;" )
  USER_GAMES=$($PSQL "SELECT count(game_id), COALESCE(min(guess_count), 0) from user_games where user_id=$USER_EXIST" )
  IFS='|' read -r GAMES_PLAYED BEST_GAME <<< "$USER_GAMES"

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate a random number between 0 to 1000 = secret number
SECRET_NUMBER=$((RANDOM % 1001))
# create variable to count guesses - set to 0
GUESS_COUNT=0
# Show message to user to guess a number message : Guess the secret number between 1 and 1000:
echo "Guess the secret number between 1 and 1000:"

# Guessing loop
while true; do
  # Read user input
  read USER_GUESS
  
  # Increment the guess count
  ((GUESS_COUNT++))
  
  # Check if the input is an integer
  if ! [[ "$USER_GUESS" =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi
  
  # Convert input to integer
  USER_GUESS=$((USER_GUESS))
  
  # Check if the guess is correct
  if [[ $USER_GUESS -eq $SECRET_NUMBER ]]; then
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
    # save it in game log for user id
    SAVE_USER_GAME=$($PSQL "INSERT INTO user_games(user_id, guess_count) VALUES($USER_EXIST, $GUESS_COUNT );")
    break
  elif [[ $USER_GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done