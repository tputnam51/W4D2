require_relative "Piece"
require "singleton"
require_relative "queen"

class NullPiece
    include Singleton

    def initialize 

    end

    def moves 
        []
    end

    def symbol 
        " "
    end

    def empty?
        true
    end
end