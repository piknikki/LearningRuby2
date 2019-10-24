class BankAccount
  attr_accessor :name

  def initialize (name)
    @name = name
    @transactions = []
    add_transaction("Beginning Balance ", 0)
  end

  def credit(decription, amount)
    add_transaction(decription, amount)
  end

  def debit(decription, amount)
    add_transaction(decription, -amount)
  end


  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end

  def balance
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end

  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end

  def print_register
    puts "#{name}'s Bank Account"
    puts "-" * 40

    puts "Description".ljust(30) + "Amount".rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + sprintf("%0.2f", transaction[:amount].to_s).rjust(10)
    end
    puts "-" * 40
    puts "Balance:".ljust(30) + sprintf("%0.2f", balance).rjust(10)
    puts "-" * 40
  end

end

bank_account = BankAccount.new("nikki")
bank_account.credit("paycheck", 2000)
bank_account.debit("groceries", 200)
bank_account.debit("gas", 40)
puts bank_account
puts "Register: "
bank_account.print_register