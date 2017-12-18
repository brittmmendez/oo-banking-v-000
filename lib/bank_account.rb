class BankAccount
    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name)
      @name=name
      @balance=1000
      @status= "open"
    end

    def deposit(amount)
        @balance=@balance+amount
    end

    def display_balance
      "Your balance is $#{self.balance}."
    end

    def valid?
      if self.status == "open" and self.balance>0
        true
      else
        false
      end
    end

    def close_account
      #can close its account (FAILED - 4)
    end

end
