require_relative "Piece"

class Rook < Piece 
    include Slideable

    def symbol
        :R.colorize(self.color) 
    end

    def move_dirs

    end
end