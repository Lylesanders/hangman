class Hangman
    attr_accessor :word, :blanks, :guessed_letters, :letter_array

    def initialize (word)
        @word = word
        @blanks = "_"*word.length
        @guessed_letters = []
        @letter_array = []
    end

    def word_include?(guess)
        word.include?(guess)
    end

    def letter_array(word)
        letter_array = word.chars.map!(&:to_s)
    end



end