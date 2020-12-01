#no ocupar guion y guion bajo para nombrar clases.
class BankUser
    attr_accessor :name, :bank_accounts
    def initialize(name, bank_accounts = nil)
        @name = name
        @bank_accounts = []
        @bank_accounts.push bank_accounts
    end

    def total_user_balance
        bank_accounts.map { |b| b.balance }.sum
    end
end

class BankAccount
    attr_accessor :bank_name, :account_number, :balance
    def initialize(bank_name, account_number, balance = 0)
        @bank_name = bank_name
        @account_number = account_number
        @balance = balance
    end

    def transfer_money(money_amount, bank_account2)
        @balance -= money_amount
        bank_account2.balance += money_amount
    end
end


#probamos las transferencias
cuenta1 = BankAccount.new('Banco de Chile', '12345678')
cuenta2 = BankAccount.new('Itau', '87654321', 5000)
cuenta2.transfer_money(5000, cuenta1)

#probamos la cardinalidad. 1 persona puede tener N cuentas. Cada cuenta pertenece a solo 1 persona.
usuario1 = BankUser.new('ariel', cuenta1)
usuario1.bank_accounts.push(cuenta2)

#probamos el método que nos trae el balance total de un usuario
puts usuario1.total_user_balance




