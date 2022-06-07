class Board
    def initialize(n)
        @grid = Array.new(n) { Array.new(n, " " )}
        @size = n * n
    end

    def create_cards
        possible_face_values = "abcdefghijklmnopqrstuvwxyz"
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

    end

    def render

    end

    def won?

    end

    def reveal

    end
end