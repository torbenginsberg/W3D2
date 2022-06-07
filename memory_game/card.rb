class Card
    attr_reader :face_value, :face_up
    
    def initialize(face_value)
        @face_value = face_value
        raise "face_value must be a single letter" if face_value.length != 1
        @face_up = false
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

    def to_s

    end

    def ==

    end
end