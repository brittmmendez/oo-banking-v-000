class Transfer

  attr_accessor :status, :receiver, :sender, "amount"

  def initialize(sender,receiver,amount)
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status= "pending"
  end

  def valid?
     @sender.valid? and @receiver.valid?

  end

  def execute_transaction
    if self.valid?
      @sender.balance=(@sender.balance)-@amount
      @receiver.balance=(@receiver.balance)+@amount
      @status= "complete"
    else
      "Transaction rejected. Please check your account balance."
      @status= "rejected"
    end
  end

end
