require_relative 'Piece'

class Board
    attr_reader :rows 

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

    def [](pos)
        row, col = pos 
        @rows[row][col]
    end

    def []=(pos, value)
        row, col = pos 
        @rows[row][col] = value 
    end

    def move_piece(start_pos, end_pos)
        piece = self[start_pos]
        if !piece.nil? && self[end_pos].nil?
            self[end_pos] = piece 
            self[start_pos] = nil 
        else
            puts "Piece can't move to that position"
        end
    end
end