
require_relative 'prob1'


RSpec.describe User do
  describe "#log_in" do
    it "logs the user in" do
      user = User.new('testuser')
      expect(user.logged_in).to be false
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      user = User.new('testuser')
      user.log_in
      expect(user.logged_in).to be true
      
    end
  end

  describe "#username" do
    it "returns the correct username" do
      username = 'testuse3'
      user = User.new(username)
      expect(user.username).to eq(username)
    end
  end
end


