desc "Calculate mean"
task :mean do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MEAN
  # ====

  # To find the mean (or average) of a set,
  #  - we sum up all the elements
  #  - then we divide the sum by the number of elements in the set
  
  # .to_f to make sure we get float division
  sum_of_all = numbers.sum.to_f
  
  num_elements = numbers.count.to_f
  
  average = sum_of_all / num_elements
  
  ap("Your numbers:")
  ap(numbers)
  ap("Mean: " + average.to_s)
  
end
