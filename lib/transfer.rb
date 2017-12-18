class Transfer

  attr_accessor :status, :receiver, :sender, "amount"

  def initialize(sender,receiver,amount)
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status= "pending"
  end

end
