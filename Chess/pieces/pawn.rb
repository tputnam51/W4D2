require_relative "Piece"

class King < Piece

    def symbol
        '♔'.colorize(color)
    end

end