class Cipher
  def string_to_arr(text)
    string_num = text.bytes
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