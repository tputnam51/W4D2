require_relative "Piece"

class Bishop < Piece

    def symbol
        '♗'.colorize(color)
    end

end