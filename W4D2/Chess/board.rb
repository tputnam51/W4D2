require_relative 'Piece'

class Board

    def initialize
        @rows = Array.new(8) { Array.new(8, nil) } 
        populate
    end

    def populate
        [0,1,6,7].each do |row|
            (0..7).each do |i|
                @rows[row][i] = Piece.new
            end
        end
    end

    def []

    end

    def []=

    end

    def move_piece()

    end
end