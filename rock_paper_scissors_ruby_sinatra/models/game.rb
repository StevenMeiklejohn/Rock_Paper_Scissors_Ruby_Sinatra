require('pry-byebug')

class Game

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
  end


  def computer_select
    computer = rand(3)
    if computer == 0
      computer = "paper"
    elsif computer == 1
      computer = "rock"
    else
      computer = "scissors"
    end
    return computer
  end


  def play()

    if (@choice2 == "computer")
      @choice2 = computer_select()
      # binding.pry
    end
    if (@choice1 == "scissors" && @choice2 == "paper")
      return "Player 1 wins!"
    # end
    elsif (@choice1 == "paper" && @choice2 == "rock")
      return "Player 1 wins!"
    # end
    elsif (@choice1 == "rock" && @choice2 == "scissors")
      return "Player 2 wins!"
    # end
    elsif (@choice2 == "scissors" && @choice1 == "paper")
      return "Player 2 wins!"
    # end
    elsif (@choice2 == "paper" && @choice1 == "rock")
      return "Player 2 wins!"
    elsif (@choice2 == "rock" && @choise1 == "scissors")
      return "Player 2 wins!"
    # end
    elsif (@choice1 == "rock" && @choice2 == "rock" ||
        @choice1 == "paper" && @choice2 == "paper" ||
        @choice1 == "scissors" && @choice2 == "scissors")
        return "The match is a draw"
    end

  end

  # def return_option1_url(p1)
  #   if (p1 == "rock")
  #     return "rock"
  #   elsif (p1 == "paper")
  #     return "paper"
  #   elsif (p1 == "scissors")
  #     return "scissors"
  #   end
  # end
  

end
