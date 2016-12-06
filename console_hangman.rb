require_relative "hangman.rb"	

class ConsoleHangman
   attr_accessor :word, :blanks, :guessed_letters, :letter_array, :guess, :winner 

    def initialize (word)
        @word = word
        @blanks = "_"*word.length
        @guessed_letters = []
        @guess = guess
    end

    def get_word

    end #class