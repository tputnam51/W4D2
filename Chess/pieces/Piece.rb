require "colorize"

class Piece

    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        
    end

    def empty?
        false
    end

    def valid_moves
        case self
        when rook 
            deltas = self.horizontal_dirs 
        when queen 
        end

        deltas.map do |(dy, dx)|
            current_y = self.pos[0]
            current_x = self.pos[1]
            [current_y + dy, current_x + dx]
        end.select {|pos| pos.all? {|i| i.between?(0,7)} }
    end

    def pos=(val)

    end


end

# rook = Piece.new

# rook.valid_moves 
    # rook.horizontal_dirs
        # rook.pos (current position of the rook)