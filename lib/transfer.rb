class Transfer

  attr_accessor :status, :receiver, :sender, :amount

  def initialize(sender,receiver,amount)
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status= "pending"
  end

  def valid?
     (@sender.valid? and(((@sender.balance)-@amount)>=0) and @receiver.valid?) and @status== "pending"

  end

  def execute_transaction
    if valid?
      @sender.balance=(@sender.balance)-@amount
      @receiver.balance=(@receiver.balance)+@amount
      @status= "complete"
    else
      @status= "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

end
