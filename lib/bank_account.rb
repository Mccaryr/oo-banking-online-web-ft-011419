class BankAccount
  @@all = []
  attr_reader :name
  attr_accessor :balance, :status, :amount
  def initialize(name)
    @name=name
    @balance = 1000
    @status= "open"
    @@all << self
  end

  def self.all
    @@all
  end

  def deposit(amount)
    @balance += amount
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if @balance > 0 && @status == "open"
      "true"
    end
  end
end
