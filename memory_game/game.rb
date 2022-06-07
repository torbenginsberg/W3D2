require_relative "board.rb"
require_relative "game.rb"

class Game 
    def initialize(n)
        @board = Board.new(n)
        @previously_guessed_position = []
    end

    def play
        #loop until game is over
        # should render the board, prompt the player for input and get a guessed pos
        #pass the pos to a make_guess method
    end

    def make_guess
        #handle the actual memory/matching logic
    end

    
end