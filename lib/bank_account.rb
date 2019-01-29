class BankAccount
  @@all = []
  attr_reader :name
  attr_accessor :balance, :status, :transfer_amount
  def initialize(name)
    @name=name
    @balance = 1000
    @status= "open"
    @@all << self
  end

  def self.all
    @@all
  end

  def deposit(balance)
    self.balance << transfer_amount
  end
end
