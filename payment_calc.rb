require 'finance'

class Payment_Calculator



  rate = Rate.new(@loan_rate.to_i, :apr, :duration => (loan_length * 12))
  amortization = Amortization.new(loan_amount, rate)

  amortization.payment
  DecNum('-1229.91')

  # puts "What is the potential loan amount?"
  # @loan_amount = gets
  #
  # if @loan_amount =~ /^-?[0-9]+$/
  #   puts "Thank you!"
  # else
  #   puts "Invalid input."
  #   abort
  # end
  #
  #   puts "What is the qualified interest rate?"
  #   @loan_rate = gets
  #
  # if @loan_rate =~ /^-?[0-9]+$/
  #     puts "Thank you!"
  # else
  #     puts "Invalid input."
  #     abort
  # end
  #
  #   puts "How many years do you want the loan?"
  #   @loan_length = gets
  #
  # if @loan_length =~ /^-?[0-9]+$/
  #   puts "Thank you!"
  # else
  #   puts "Invalid input."
  #   abort
  # end
  #
  # #This chunk of code takes user inputs and calculates monthly payment.
  #
  # tr = r.to_f / 1200
  # tl = (p.to_i*tr*n.to_i) + p.to_i
  # mp = tl.to_f / n.to_f
  # puts "Your monthly payment will be #{mp.round(2)}."

end
