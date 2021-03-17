require_relative "Piece"

class Pawn < Piece

    def symbol
        '♙'.colorize(color)
    end

    def moves

    end

    def at_start_row?

    end

    def forward_dir
        if color == :white
            1
        else
           -1
        end
    end

    def forward_steps
        y, x = pos
        [[y + forward_dir, x ], [y + (2 * forward_dir), x]] = step

        step.select do |pos|
             self.board.valid_pos?(pos) && (board.empty?(pos) || self.color != board[pos].color)
        end
            
    end

    def side_attacks

    end

end