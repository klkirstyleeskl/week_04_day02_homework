class RPSGame
attr_reader :hand1, :hand2

  def initialize(hand1, hand2)
    @hand1 = hand1.downcase
    @hand2 = hand2.downcase
  end

    def check_win()
    win = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }

    if @hand1 == @hand2
      return "It's a Draw!"
    elsif win[@hand1] == @hand2
      return "Player 1 wins with #{hand1}!"
    elsif win[@hand2] == @hand1
      return "Player 2 wins with #{hand2}!"
    else
      return "uh oh! Looks like you didn't enter valid inputs!"
    end
  end

end
