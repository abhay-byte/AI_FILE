import random

def hangman():
    words = ["python", "java", "kotlin", "js", "hangman", "dev", "code", "YPS"]
    word = random.choice(words)
    guessed_letters = set()
    attempts = 6

    print("Hangman!")

    while attempts > 0:
        # Display the current state of the word
        current_state = " ".join(letter if letter in guessed_letters else "_" for letter in word)
        print(current_state)

        # Get user input
        guess = input("Guess: ").lower()

        # Validate input
        if len(guess) != 1 or not guess.isalpha() or guess in guessed_letters:
            continue

        # Add the guess to the set of guessed letters
        guessed_letters.add(guess)

        # Check if the guess is incorrect
        if guess not in word:
            attempts -= 1

        # Check if the player has guessed all the letters
        if all(letter in guessed_letters for letter in word):
            print("Win!", word)
            return

    print("Lost!", word)

hangman()
