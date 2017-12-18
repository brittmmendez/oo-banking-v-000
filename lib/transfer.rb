class Transfer

  attr_accessor :status, :receiver, :sender, "amount"

  def initialize(sender,receiver,amount)
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status= "pending"
  end

  def valid?
    if @sender.valid? and @receiver.valid?

    end
  end

  def execute_transaction
    if valid?
      @sender.balance=(@sender.balance)-@amount
      @receiver.balance=(@receiver.balance)+@amount
      @status= "complete"
    else
      reject
    end
  end

end
