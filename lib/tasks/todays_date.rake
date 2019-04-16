desc "Print today's date"

#source: https://www.rubyguides.com/2015/12/ruby-time/

task :todays_date do
    time = Time.now
    #%a is the  abbrev. date, %d is the numerical date, %b is the abbrev. month, %Y is the full year
    output = time.strftime("%a, %d %b %Y")

    ap(output)

end