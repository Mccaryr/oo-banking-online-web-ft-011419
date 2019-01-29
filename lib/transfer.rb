class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender=sender
    @receiver=receiver
    @status="pending"
    @amount =amount
  end

  def valid?
    if sender.valid? && receiver.valid?
      return true
    else
      return false
    end
  end

  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected, you broke dawg"
    elsif
      @status == "complete"
      puts "Transaction has already been executed"
    else
      @sender.deposit(@amount * -1)
      @receiver.deposit(@amount) 
      @status = "complete"
    end
  end

end
