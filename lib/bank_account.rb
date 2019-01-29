class BankAccount
  attr_reader :name
  attr_accessor :balance, :status, :transfer_amount
  def initialize(name)
    @name=name
    @balance = 1000
    @status= "open"
  end

  def deposit(transfer_amount)
    self.balance << transfer_amount
  end
end
