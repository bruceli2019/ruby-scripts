desc "Calculate monthly loan payments"


task :loan_payment do
    #this read the file  
    apr_rate_read = Rails.root + "lib/input_files/loan_payment_apr.txt"
    # outputs things in file into a string, gets rid of "\n" with .chomp
    apr_rate_str = open(apr_rate_read).read.chomp

    #this read the file  
    pay_years_read = Rails.root + "lib/input_files/loan_payment_years.txt"
    # outputs things in file into a string
    pay_years_str = open(pay_years_read).read.chomp

    #this read the file  
    princip_read = Rails.root + "lib/input_files/loan_payment_principal.txt"
    # outputs things in file into a string
    princip_str = open(princip_read).read.chomp

    # we calculate the annual payments first, convert all information to floats and ints, then calculate monthly payments
    
    # convert rate to decimals
    annual_rate = apr_rate_str.to_f / 100.0
    
    monthly_rate = annual_rate / 12
    
    years = pay_years_str.to_i
    
    principal = princip_str.to_f
    
    #source: https://en.wikipedia.org/wiki/Mortgage_calculator#Monthly_payment_formula
    monthly_payment = (monthly_rate * principal) / (1 - (1 + monthly_rate)**(-years * 12))

    ap("APR: " + apr_rate_str + ".0")
    ap("Number of Years: " + pay_years_str)
    ap("Principal: " + "$" + princip_str + ".0")
    # need to convert monthly payment to string, .round(2) cuts things off at hundreths
    ap("Monthly Payment: " + "$" + monthly_payment.round(2).to_s)

end
