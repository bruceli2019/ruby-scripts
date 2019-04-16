desc "Calculate range"
task :range do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # RANGE
  # =====

  # To find the range of a set of numbers,
  #  - Find the maximum
  #  - Find the minimum
  #  - Subtract the latter from the former
  
  min_of_array = numbers.min
  max_of_array = numbers.max
  
  range = max_of_array - min_of_array
  
  ap("Your numbers:")
  ap(numbers)
  
  ap("Range: " + range.to_s)
  
end
