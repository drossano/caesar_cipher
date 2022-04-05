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
      expect(cipher.shift_arr([1 ,2, 3], 2)).to eql([3, 4, 5])
    end
    it "decreases each array element if a negative is given" do
      cipher = Cipher.new
      expect(cipher.shift_arr([1, 2, 3], -2)).to eql([-1, 0, 1])
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
  end
end