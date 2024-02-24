require_relative "prob3"

RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        string = StringWrapper.new("This is Comp")
        expect(string.reverse).to eq("pmoC si sihT")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        string = StringWrapper.new("This is Comp")
        expect(string.upcase).to eq("THIS IS COMP")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        string = StringWrapper.new("This is Comp")
        expect(string.downcase).to eq("this is comp")
      end
    end
end
  