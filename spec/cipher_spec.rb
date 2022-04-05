require "./main.rb"

describe Cipher do
  describe "#string_to_arr" do
    it "converts a string to an array" do
      cipher = Cipher.new
      expect(cipher.string_to_arr('abc')).to be_a(Array)
    end
  end
  describe "#shift_arr" do
    it "increases each array element by the chosen number" do
      cipher = Cipher.new
      expect(cipher.shift_arr([97 ,98, 99], 2)).to eql([99, 100, 101])
    end
    it "decreases each array element if a negative is given" do
      cipher = Cipher.new
      expect(cipher.shift_arr([97 ,98, 99], -2)).to eql([95, 96, 97])
    end
  end
  describe "#arr_to_string" do
    it "changes the array back to a string" do
      cipher = Cipher.new
      expect(cipher.num_to_string([1, 2, 3])).to be_a(String)
    end
  end
  describe "cipher" do
    it "shifts a string by the given number of letters" do
      cipher = Cipher.new
      expect(cipher.cipher("abc", 2)).to eql("cde")  
    end
    it "preserves captial letters" do
      cipher = Cipher.new
      expect(cipher.cipher("A", 1)).to eql("B")
    end
    it "ignores non letter characters" do
      cipher = Cipher.new
      expect(cipher.cipher("ab cd!", 1)).to eql("bc de!")
    end
  end
end