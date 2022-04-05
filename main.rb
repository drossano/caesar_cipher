class Cipher
  def string_to_arr(text)
    text.bytes
  end

  def shift_arr(array, shift)
    array.map! do |n|
      if n.between?(97, 122)
        shifted_num = n + shift
        shifted_num -= 26 if shifted_num > 122
        shifted_num += 26 if shifted_num < 97
        shifted_num
      elsif n.between?(65, 90)
        shifted_num = n + shift
        shifted_num -= 26 if shifted_num > 90
        shifted_num += 26 if shifted_num < 65
        shifted_num
      else
        n
      end
    end
  end

  def num_to_string(array)
    array.map { |n| n.chr}.join
  end

  def cipher(text, shift)
    num_to_string(shift_arr(string_to_arr(text), shift))
  end
end