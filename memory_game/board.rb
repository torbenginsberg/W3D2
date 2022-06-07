require_relative "card.rb"

class Board
    def initialize(n)
        @grid = Array.new(n) { Array.new(n, " " )}
        @size = n * n
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
        cards
    end

    def populate
        cards = self.create_cards
        @grid.each do |row|
            row.map! do |ele|
                cards.delete_at(rand(cards.length))
            end
        end
        @grid
    end

    def render
        rendered_grid = []
        @grid.each do |row|
            rendered_row = []
            row.each do |ele|
                if ele.face_up
                    rendered_row << ele.face_value
                else
                    rendered_row << " "
                end
            end
            rendered_grid << rendered_row
        end
        idx_arr = (0...@grid.length).map { |i| i }
        puts "  #{idx_arr.join(" ")}"
        rendered_grid.each_with_index { |row, i| puts "#{i.to_s} #{row.join(" ")}" }
    end

    def won?

    end

    def reveal(position)
        row, col = position
        card = @grid[row][col]
        card.reveal
    end
end

b = Board.new(4)
b.populate
b.render