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

     def test_guessed_letter_goes_into_guessed_letter_array
        game = Hangman.new("beer")
        game.make_guess("a")
        game.make_guess("z")
        assert_equal(["a","z"], game.guessed_letters )
     end

     def test_update_blanks
        game = Hangman.new("beer")
        game.update_blanks("b")
        assert_equal("b___", game.blanks)
     end

     def test_update_2_es
        game = Hangman.new("beer")
        game.update_blanks("e")
        assert_equal("_ee_", game.blanks)
    end

    def test_update_2_es
        game = Hangman.new("whiskey")
        game.update_blanks("e")
        assert_equal("_____e_", game.blanks)
    end 

    def test_for_winner
         game = Hangman.new("beer")
         game.update_blanks("b")
         game.update_blanks("e")
         game.update_blanks("r")
         assert_equal(true, game.winner?)
    end

    def test_already_guessed
         game = Hangman.new("beer")
         game.guessed_letters =["o"]
         assert_equal(true, game.already_guessed?("o"))
    end
    def test_game_looser_true?
        game = Hangman.new("beer")
        game.guesses = 6
        assert_equal(true, game.looser?)

    end



    def test_game_looser_false?
        game = Hangman.new("beer")
        game.guesses = 5
        assert_equal(false, game.looser?)

    end
        





 end #class