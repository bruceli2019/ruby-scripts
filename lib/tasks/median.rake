desc "Calculate median"
task :median do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MEDIAN
  # ======

  # To find the median of a set of numbers,
  #  - sort your set
  #  - find the number of items in your sorted set
  #  - if your sorted set has an odd number of items
  #    - save the middle number as your median
  #  - otherwise
  #    - find the number to the left of the middle number
  #    - find the number to the right of the middle number
  #    - average the left and right numbers and save it as your median
  
  #sort the array
  numbers_sorted = numbers.sort
  
  # number of observations in count
  num_obs = numbers.count
  
  # we declare the default value of the median to be nil, we don't know what it is
  median = nil
  
  # if the number of observations is even
  if (num_obs % 2 == 0)
    # we need to find the middle 2 numbers
    left_index = num_obs / 2 - 1
    right_index = num_obs / 2
    median = (numbers_sorted[left_index] + numbers_sorted[right_index]) / 2
  else # if it's not odd, it's even
    median_index= (num_obs - 1) / 2 # recall the index starts at 0!
    median = numbers_sorted[median_index]
  end
  
  ap("Sorted Numbers:")
  ap(numbers_sorted)
  ap("Median: " + median.to_s)
  
end
