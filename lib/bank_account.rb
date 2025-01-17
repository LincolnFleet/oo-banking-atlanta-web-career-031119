class BankAccount
    def initialize(name)
        @name=name
        @balance=1000
        @status='open'
    end

    attr_accessor   :balance, :status
    attr_reader     :name

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def deposit(amount)
        self.balance=self.balance+amount
    end

    def valid?
        (self.balance>0 && self.status=='open') ? true : false
    end

    def close_account
        self.status='closed'
    end
end
