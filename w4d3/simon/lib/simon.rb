class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def add_random_color
    @sequence_length = 1

    @seq << COLORS.sample
    puts @seq[-1]
  end

  def play
    until game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    @sequence_length += 1
    show_sequence
    require_sequence
    round_success_message
    
  end

  def show_sequence
    @seq.each {|color| puts color}
    add_random_color
  end

  def require_sequence

  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
