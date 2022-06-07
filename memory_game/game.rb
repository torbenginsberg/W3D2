require_relative "board.rb"
require_relative "game.rb"

class Game 
    def initialize(n)
        @board = Board.new(n)
        @previously_guessed_position = []
        @number_of_rows = n
    end

    def get_position
        p "Please enter the position of the card you'd like to flip (e.g., '2,3')"
        position_input = gets.chomp
        position_arr = position_input.split(",").map { |ele| ele.to_i }
        raise "Invalid position" if position_arr.length != 2 || position_arr.any? { |ele| ele >= @number_of_rows }
        position_arr
    end

    def make_guess
        #handle the actual memory/matching logic
    end

    def play
        #loop until game is over
        #should render the board, prompt the player for input and get a guessed pos
        #pass the pos to a make_guess method

        @board.render
        self.get_position
        
    end
    
end