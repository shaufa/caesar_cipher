# spec/cipher_spec.rb
require './lib/cipher.rb'

describe Cipher do
  describe "#encrypt" do
    it "Shifts lowercase string 4 steps forward" do
      expect(subject.encrypt("hello", 4)).to eql("lipps")
    end
    it "Shifts UPPERCASE string 4 steps forward" do
      expect(subject.encrypt("HELLO", 4)).to eql("LIPPS")
    end
    it "Shifts Mixed string 4 steps forward" do
      expect(subject.encrypt("HeLlO", 4)).to eql("LiPpS")
    end
    it "Shifts string 4 steps forward and wraps arround the alphabet" do
      expect(subject.encrypt("Zombie", 4)).to eql("Dsqfmi")
    end
    it "Wraps when shift is > than alphabet" do
      expect(subject.encrypt("Further", 150)).to eql("Zolnbyl")
    end
  end
end