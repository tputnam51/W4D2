#require_relative 'pieces'
Dir["./pieces/*.rb"].each {|file| require file }


class Board
    attr_reader :rows 

    def initialize
        @rows = Array.new(8) { Array.new(8, nil) } 
        populate_front 
        populate_back
    end

    def populate_front
        [1,6].each do |row|
            (0..7).each do |i|
                if row == 1
                    @rows[row][i] = Pawn.new(:black, self, [row, i])
                else
                    @rows[row][i] = Pawn.new(:white, self, [row, i])
                end
            end
        end
    end

    def populate_back
        [0, 7].each do |row|
            (0..7).each do |i|
                row == 0 ? color = :black : color = :white 
                case i 
                when 0, 7
                    @rows[row][i] = Rook.new(color, self, [row, i])
                when 1, 6
                    @rows[row][i] = Knight.new(color, self, [row, i])
                when 2, 5
                    @rows[row][i] = Bishop.new(color, self, [row, i])
                when 3
                    @rows[row][i] = Queen.new(color, self, [row, i])
                when 4
                    @rows[row][i] = King.new(color, self, [row, i])
                end
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

    # def empty?(pos)
    #     self[pos].empty?
    # end

    
    def add_piece(piece, pos)
        
        self[pos] = piece

    end

    def checkmate?

    end
end