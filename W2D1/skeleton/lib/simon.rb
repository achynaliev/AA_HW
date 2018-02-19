require "colorize"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn
    until game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if game_over == false
      @sequence_length += 1
      round_success_message
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |col|
      case col
      when "blue"
        puts "blue".blue
      when "red"
        puts "red".red
      when "green"
        puts "green".green
      when "yellow"
        puts "yellow".yellow
      end
    end
    sleep(2)
    system("clear")
  end

  def require_sequence
    puts "Please enter sequence blue,red sep by comma"
    user_input = gets.chomp
    user = user_input.split(",")
    if user != @seq
      @game_over = true
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Good u guess right, next round"
  end

  def game_over_message
    puts "Sorry u lost bro"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

game = Simon.new
game.play
