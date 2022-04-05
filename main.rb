class Cipher
  def string_to_arr(text)
    text.bytes
  end

  def shift_arr(array, shift)
    array.map! do |n|
      if n.between?(97, 122)
        lower_shift(n, shift)
      elsif n.between?(65, 90)
        upper_shift(n, shift)
      else
        n
      end
    end
  end

  def lower_shift(number, shift)
    shifted_num = number + shift
    shifted_num -= 26 if shifted_num > 122
    shifted_num += 26 if shifted_num < 97
    shifted_num
  end

  def upper_shift(number, shift)
    shifted_num = number + shift
    shifted_num -= 26 if shifted_num > 90
    shifted_num += 26 if shifted_num < 65
    shifted_num
  end

  def num_to_string(array)
    array.map { |n| n.chr}.join
  end

  def cipher(text, shift)
    num_to_string(shift_arr(string_to_arr(text), shift))
  end
end
