require_relative "Piece"

class Pawn < Piece

    def symbol
        '♙'.colorize(color)
    end

    def moves
        forward_steps + side_attacks
    end

    def at_start_row?
        return true if color == :white && pos.first == 1
        return true if color == :black && pos.first == 6
        false 
    end

    def forward_dir
        if color == :white
            -1
        else
            1
        end
    end

    def forward_steps
        y, x = pos
        
        [y + forward_dir, x ] = one_step
        [y + (2 * forward_dir), x] = two_step

        at_start_row? ? steps = [one_step] + [two_step] : steps = [one_step]

        steps.select do |pos|
            self.board.valid_pos?(pos) && (board.empty?(pos))
        end
    end

    def side_attacks
        moves = [[y + forward_dir, (x - 1) ], [y + forward_dir, (x + 1)]]
        moves.select do |pos|
            self.board.valid_pos?(pos) && !board.empty?(pos) && self.color != board[pos].color
        end
    end
end