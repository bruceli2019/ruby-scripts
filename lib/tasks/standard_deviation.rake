desc "Calculate standard deviation"
task :standard_deviation do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # VARIANCE
  # ========
  # To find the variance of a set,
  #  - we find the mean of the set
  #  - for each number in the set,
  #    - we find the difference between the number and the mean
  #    - we square the difference
  #  - the variance is the mean of the squared differences

  # STANDARD DEVIATION
  # ==================
  # To find the standard deviation of a set,
  #  - take the square root of the variance
  
  # find the mean
  # .to_f to make sure we get float div
  sum_of_all = numbers.sum.to_f
  
  num_elements = numbers.count.to_f
  
  average = sum_of_all / num_elements
  
  # create an empty array to hold squared differences
  array_of_squared_diff = []
  
  numbers.each do |num_1|
    # square the difference
    new_sq_diff = (num_1 - average) ** 2
    # add into array
    array_of_squared_diff.push(new_sq_diff)
  end
  
  # also convert into a float to avoid integer division
  sum_of_sq_diff = array_of_squared_diff.sum.to_f
  
  est_var = sum_of_sq_diff / num_elements
  
  est_std_dev = Math.sqrt(est_var)
  
  
  # output
  ap(numbers)
  
  ap("Standard Deviation: " + est_std_dev.to_s)

end
