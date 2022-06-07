class Card
    attr_reader :face_value, :face_up
    
    def initialize(face_value)
        @face_value = face_value
        raise "face_value must be a single letter" if face_value.length != 1
        @face_up = false
    end

    def display_card
        if @face_up
            p @face_value
        else
            p " "
        end
    end

    def hide
        if @face_up == true
            @face_up = false
        end
    end

    def reveal
        if @face_up == false
            @face_up = true
        end
    end

    def to_s

    end

    def ==

    end
end