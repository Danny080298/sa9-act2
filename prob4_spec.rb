require_relative "prob4"

RSpec.describe BankAccount do
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        account = BankAccount.new(450)
        account.deposit(300)
        expect(account.balance).to eq(750)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        account = BankAccount.new(450)
        account.withdraw(200)
        expect(account.balance).to eq(250)
      end
  
      it "does not change the balance if insufficient funds" do
        account = BankAccount.new(450)
        account.withdraw(600)
        expect(account.balance).to eq(450)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        account = BankAccount.new(450)
        expect(account.balance).to eq(450)
      end
    end
end
  