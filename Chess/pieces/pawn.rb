require_relative "Piece"

class Pawn < Piece

    def symbol
        '♙'.colorize(color)
    end

end