require_relative "Piece"
require "singleton"
require_relative "queen"

class NullPiece
    include Singleton

    # def initialize 

    # end

    def empty?
        true
    end
end