class Hangman
    attr_accessor :word, :blanks, :guessed_letters, :letter_array, :guess, :winner

    def initialize (word)
        @word = word
        @blanks = "_"*word.length
        @guessed_letters = []
        @guess = guess
    end

    def word_include?(guess)
        word.include?(guess)
    end

    def make_guess(guess)
        guessed_letters << guess
    end

    def update_blanks(guess)
    i=0
    word.length.times do
        if word[i] == guess
            @blanks[i] = guess
            end #if
        i=i+1
        end
    end

    def winner?
        @blanks == word
    end







end