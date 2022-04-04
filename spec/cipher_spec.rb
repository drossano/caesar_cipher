require "./main.rb"

describe Cipher do
  describe "#string_to_arr" do
    it "converts a string to an array" do
      cipher = Cipher.new
      expect(cipher.string_to_arr('abc')).to be_a(Array)
    end
  end
end