class Card
    attr_reader :face_value
    
    def initialize(face_value)
        @face_value = face_value
        @face_up = true
    end

    def display_card
        if @face_up
            @face_value
        else
            nil
        end
    end

    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end

    def face_up?
        @face_up
    end

    def to_s

    end

    def ==

    end
end

