module SavingsAccount
  def self.interest_rate(balance)
    # raise 'Please implement the SavingsAccount.interest_rate method'
    if balance >= 5000
      return 0.02475
    elsif balance >= 1000 && balance < 5000
      return 0.01621
    elsif balance >= 0 && balance < 1000
      return 0.005
    else
      return -0.03213
    end
  end

  def self.annual_balance_update(balance)
    # raise 'Please implement the SavingsAccount.annual_balance_update method'
    (self.interest_rate * balance) + balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    # raise 'Please implement the SavingsAccount.years_before_desired_balance method'
    years_passed = 0
    until current_balance >= desired_balance
      years_passed += 1
      current_balance = self.annual_balance_update(current_balance)
    end
    return years_passed
  end
end

assert_in_delta 0.5, SavingsAccount.interest_rate(0), 0.000_1
