desc "Calculate mode"
task :mode do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MODE
  # ====

  # To find the mode of a set of numbers, I follow an approach similar to the one for minimum and maximum above.
  
  #I don't need hash, I just need 2 loops -- 1 is to run through the list of values, one is to count the number of occurences
  # we just need to run through the list each time and find the maximum counts, store that in a list

  #default max count is 0, default mode is nil because we don't know what the value for mode is, nil is the same as None for Python
  max_count = 0
  mode = nil
  
  numbers.each do |uniq_val|
    #counts number of times the uniq_val shows up in array
    new_max_count = numbers.count(uniq_val)
    
    #if the maximum count of the currently evaluated value is greater than the previously stored max count, we update the max count and set the mode to be that value
    if max_count < new_max_count
      max_count = new_max_count
      mode = uniq_val
    end
  end
    
  sorted_nums = numbers.sort
  # output the values
  
  ap("Sorted numbers:")
  ap(sorted_nums)
  ap("Mode: " + mode.to_s)
  
end
