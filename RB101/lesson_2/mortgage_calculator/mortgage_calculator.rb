def get_float_value
  gets.chomp.to_f
end

def get_int_value
  gets.chomp.to_i
end

def convert_apr(apr)
  apr / 12 / 100
end

def convert_loan_duration(loan)
  (loan * 12).to_i
end

def prompt(message)
  puts("=> #{message}")
end

def monthly_payment(l_amount, m_interest, l_duration)
  monthly_payment = l_amount *
                    (m_interest / (1 - (1 + m_interest)**(-l_duration)))
  format("%.f", monthly_payment)
end

prompt("Hello, what's the loan amount?")
loan_amount = get_float_value
prompt("What's the Annual Percentage Rate?")
monthly_interest_rate = convert_apr(get_float_value)
prompt("What's the monthly loan duration?")
monthly_loan_duration = get_int_value

puts monthly_payment(loan_amount, monthly_interest_rate, monthly_loan_duration)
