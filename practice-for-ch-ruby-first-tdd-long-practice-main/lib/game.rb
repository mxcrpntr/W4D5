require_relative "towers"

class Game
  
  def initialize(num_towers,num_discs)
    @towers = Array.new(num_towers) {Tower.new}
    i = num_discs
    num_discs.times do 
      @towers[0].push(Disc.new(i,@towers[0]))
      i -= 1
    end
    @height = num_discs
  end

  def run
    until game_over?
      render
      puts "Choose a tower to move a disc from (1, 2, or 3)..."
      chosen_tower_1 = @towers[gets.chomp.to_i - 1]
      chosen_disc = chosen_tower_1.pop
      puts "Now which tower do you want to put the disc on (1, 2, or 3)...?"
      chosen_tower_2 = @towers[gets.chomp.to_i - 1]
      chosen_tower_2.push(chosen_disc)
      system("clear")
    end
  end

  def render
    stacks_dup = []
    @towers.each do |tower|
      array = tower.stack + Array.new(@height - tower.stack.size, "|")
      mapped_array = array.map do |el|
        if el.is_a?(Disc)
          el.size
        else
          el
        end
      end
      stacks_dup << mapped_array.reverse
    end
    stacks_dup.transpose.each do |row|
      print row.join("  ") + "\n"
    end

  end
  def game_over?
    @towers.last.stack.size == @height
  end
end

game = Game.new(5,5)
game.run