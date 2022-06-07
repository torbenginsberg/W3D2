require_relative "card.rb"

class Board
    attr_reader :size

    def initialize(n = 4)
        @grid = Array.new(n) { Array.new(n)}
        @size = n * n
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end

    def []=(position, value)
        row, col = position
        @grid[row][col] = value
    end
    
    def create_cards
        possible_face_values = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        cards = []

        while cards.length < @size
            idx = rand(0...possible_face_values.length)
            card_value = possible_face_values[idx]
            card_1 = Card.new(card_value)
            card_2 = Card.new(card_value)
            cards << card_1
            cards << card_2
        end
        cards.shuffle!
    end

    def populate
        cards = self.create_cards
        @grid.each_index do |idx|
            @grid[idx].each_index do |idx_2|
                @grid[idx][idx_2] = cards.shift
            end
        end
    end

    def render
        system("clear")
        idx_arr = (0...@grid.length).map { |i| i }
        puts "  #{idx_arr.join(" ")}"
        @grid.each_with_index do |row, i|
            puts "#{i} #{row.join(" ")}"
        end
    end

    def won?

    end

    def reveal(position)
        # row, col = position
        # card = @grid[row][col]
        # card.reveal
    end
end


b = Board.new(4)
b.populate
b.render
