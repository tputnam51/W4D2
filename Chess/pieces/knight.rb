require_relative "Piece"

class Knight < Piece


    def symbol
        '♘'.colorize(color)
    end
end