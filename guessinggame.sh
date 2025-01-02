#!/usr/bin/env bash
# File: guessinggame.sh

# Function to get the number of files in the current directory
get_file_count() {
  echo $(ls -1 | wc -l)
}

# Main logic
correct_guess=$(get_file_count)
guess=-1

echo "How many files are in the current directory?"

# Loop until correct guess is made
while [[ $guess -ne $correct_guess ]]
do
  read -p "Enter your guess: " guess

  if [[ $guess -lt $correct_guess ]]
  then
    echo "Your guess is too low. Try again."
  elif [[ $guess -gt $correct_guess ]]
  then
    echo "Your guess is too high. Try again."
  fi
done

echo "Congratulations! You guessed the correct number of files."
