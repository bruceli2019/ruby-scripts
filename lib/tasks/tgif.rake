desc "Check if today is Friday"
task :tgif do
    # get the current date
    date = Date.today
    
    week_date = date.strftime("%A")
    
    if week_date == "Friday"
        ap("Yay, it's Friday!")
    else
        ap("Nope, not yet :/")
    end

end
