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
      return "Transaction rejected. Please check your account balance."
    elsif
      @status == "complete"
      puts "Transaction has already been executed"
    else
      @sender.deposit(@amount * -1)
      @receiver.deposit(@amount)
      @status = "complete"
    end
  end

  def reverse_transfer
    if @status == "complete"
      puts "Only executed transfers can be reversed"
    else
      @receiver.deposit(@amount * -1)
      @sender.deposit(@mount)
      @status = "complete"
    end
  end
end
