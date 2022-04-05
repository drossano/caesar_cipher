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

  def caesar_cipher (text, shift)
    text_num = text.bytes
    shfited_text_num = text_num.map do |n|
      if n.between?(97,122)
        shifted_number = n + shift
        if shifted_number > 122
          shifted_number -= 26
        elsif shifted_number < 97
          shifted_number += 26
        else
          shifted_number
        end
      elsif n.between?(65, 90)
        shifted_number = n + shift
        if shifted_number > 90
          shifted_number -= 26
        elsif shifted_number < 65
          shifted_number += 26
        else
          shifted_number
        end
      else
        n
      end
    end
    puts shfited_text_num.map { |shifted_number| shifted_number.chr}.join
  end
end