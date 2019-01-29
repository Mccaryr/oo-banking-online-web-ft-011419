class Transfer
  attr_accessor :sender, :receiver, :status
  def initialize(sender, receiver, transfer_amount)
    @sender=sender
    @receiver=receiver
    @status="pending"
    @transfer_amount = 50
  end
end
