require "minitest/autorun"						# add minitest function to program
require_relative "hangman.rb"					# point minitest to division.rb

class TestHangman < Minitest::Test  	#create template for test

	# def test_one_equal_one_
	# 	assert_equal(1,1)
	# end 

   def test_new_game #test for new instance of game
        game = Hangman.new("beer")
        assert_equal("beer", game.word)
    end

    def test_number_of_blanks
           game = Hangman.new("beer")
           assert_equal("____", game.blanks) 
    end

    def test_of_letter_guesses_in_word
        game = Hangman.new("beer")
        assert_equal(true, game.word_include?("b"))
        assert_equal(false, game.word_include?("w"))
     end

     def test_guess_array_empty_at_game_start
        game = Hangman.new("beer")
        assert_equal([], game.guessed_letters)
     end

    def test_letters_sepperated_in_array
        game = Hangman.new("beer")
        assert_equal(["b","e","e","r"], game.letter_array("beer"))
    end

    #  def test_guessed_letters_into_array
    #     game = Hangman.new("beer")
    #     assert_equal(["b___"], game.letter_array)
    #  end






 end #class