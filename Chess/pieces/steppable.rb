class Stepable

    def moves
        all_mov = move_diffs.map do |dy, dx|
            [pos.first + dy, pos.last + dx]
        end

        all_mov.select do |pos|
             self.board.valid_pos?(pos) && (board.empty?(pos) || self.color != board[pos].color)      
        end
    end

    private
    
    def move_diffs
        raise NotImplementedError
    end
end