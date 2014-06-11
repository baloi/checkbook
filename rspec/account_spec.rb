require './rspec/spec_helper'
require './model'

describe Account do
  before(:each) do
    clear_database
  end

  after(:each) do
    clear_database
  end

  it "can deposit an amount" do
    account = Account.new  
    account.balance = 40
    account.save

   
    account.deposit(50)
    account.save  
    account.balance.should eq(90)
    a = Account.all.first
    a.balance.should eq(90)

  end

  it "shows current balance of account" do
    account = Account.new  
    account.balance = 40
    account.save

    a = Account.all.first
    a.balance.should eq(40)
   
    a.deposit(50)
    a.save  
    a.balance.should eq(90)
  end

end
