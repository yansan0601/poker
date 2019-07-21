module ApplicationHelper
  def straight_flash(suit1, suit2, suit3, suit4, suit5, number1, number2, number3, number4, number5, result)
    if suit1 == suit2 && suit1 == suit3 && suit1 == suit4 && suit1 == suit5
      if number1 == number2 && number1 == number3 && number1 == number4 && number1 == number5
        result = 1
      else
        result = 0
      end
    end

    return result
  end

  def flash(suit1, suit2, suit3, suit4, suit5, result)
    if suit1 == suit2 && suit2 == suit3 && suit3 == suit4 && suit4 == suit5
      result = 1
    else
      result = 0
    end

    return result
  end

  def four_of_a_kind(suit1, suit2, suit3, suit4, suit5, result)
    if suit1 == suit2 && suit1 == suit3 && suit1 == suit4
      result = 1
    elsif suit1 == suit2 && suit1 == suit3 && suit1 == suit5
      result = 1
    elsif suit1 == suit2 && suit1 == suit4 && suit1 == suit5
      result = 1
    elsif suit1 == suit3 && suit1 == suit4 && suit1 == suit5
      result = 1
    elsif suit2 == suit3 && suit2 == suit4 && suit2 == suit5
      result = 1
    else
      result = 0
    end

    return result
  end

  def full_house(number1, number2, number3, number4, number5, result)
    if number1 == number2 && number2 == number3
      if number4 == number5
        result = 1
      else
        result = 0
      end
    elsif number1 == number2 && number1 == number4
      if number4 == number5
        result = 1
      else
        result = 0
      end
    elsif number1 == number2 && number1 == number5
      if number4 == number5
        result = 1
      else
        result = 0
      end
    elsif number1 == number3 && number1 == number4
      if number4 == number5
        result = 1
      else
        result = 0
      end
    elsif number1 == number3 && number1 == number5
      if number4 == number5
        result = 1
      else
        result = 0
      end
    elsif number1 == number4 && number1 == number5
      if number4 == number5
        result = 1
      else
        result = 0
      end
    end

    return result
  end
end
