require 'colorize'
require_relative 'Cursor'
require_relative 'board'

class Display

attr_reader :cursor , :board

    def initialize
        @board = Board.new
        @cursor = Cursor.new([0,0], @board)
    end 



    def render
        # puts " #{(0...8).to_a.join(" ")}"
        board.grid.each_with_index do |row, i|
            # p i
            row.each_with_index do |piece , j|
                print " #{piece.symbol.to_s.colorize(piece.color)}" 
            end 
            puts
        end 
    end 


end 

d = Display.new
d.render
# p d
# d.cursor.get_input 


