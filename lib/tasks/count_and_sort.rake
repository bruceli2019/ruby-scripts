desc "Count and sort numbers"
task :count_and_sort do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  string_input = open(path_to_file).read.chomp
  numbers = string_input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  num_count = numbers.count
  
  sort_array = numbers.sort
  
  ap("Your numbers:")
  ap(numbers)
  
  ap("Count: " + num_count.to_s)
  
  ap("Sorted numbers:")
  ap(sort_array)

end
