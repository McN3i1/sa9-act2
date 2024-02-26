require "prob3"

RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        string = StringWrapper.new("basketball")
        expect(string.reverse).to eq("llabteksab")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        string = StringWrapper.new("basketball")
        expect(string.upcase).to eq("BASKETBALL")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        string = StringWrapper.new("BASKETBALL")
        expect(string.downcase).to eq("basketball")
        end
    end
end
  