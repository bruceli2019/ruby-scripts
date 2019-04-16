desc "say bye"

#task is the method, bye is the symbol that we call in the command line, do ... end is the block of code that we run, ap is "awesome print" which prints the text
task :bye do
    ap("See you next time, AppDev!")
end