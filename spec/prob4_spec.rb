require "prob4"

RSpec.describe BankAccount do
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        bank = BankAccount.new
        bank.deposit(100)
        expect(bank.balance).to eq(100)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        bank = BankAccount.new
        bank.deposit(100)
        bank.withdraw(50)
        expect(bank.balance).to eq(50)
      end
  
      it "does not change the balance if insufficient funds" do
        bank = BankAccount.new
        bank.deposit(50)
        bank.withdraw(100)
        expect(bank.balance).to eq(50)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        bank = BankAccount.new
        expect(bank.balance).to eq(0)
        end
    end
end
  