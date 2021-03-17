require_relative "Piece"
require_relative 'slideable'

class Queen < Piece

    include Slideable

    def symbol
       '♕'.colorize(color) 
    end

    private

    def moves_dirs
        HORIZONTAL_DIRS + DIAGONAL_DIRS
    end
end