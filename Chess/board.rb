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
                @rows[row][i] = Piece.new()
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
        
        raise "'start_pos' in not valid" unless valid_pos?(start_pos) || self[start_pos].is_a?(Piece)
        raise "'end_pos' in not valid" unless valid_pos?(end_pos)

        piece = self[start_pos]
        if !piece.nil? && self[end_pos].nil?
            self[end_pos] = piece 
            self[start_pos] = nil 
        else
            puts "Piece can't move to that position"
        end
    end

    def valid_pos?(pos)
        pos.all? {|i| i.between?(0,7) }
    end

    def empty?(pos)
        
    end

    
    def add_piece(piece, pos)
        
        self[pos] = piece

    end

    def checkmate?

    end
end