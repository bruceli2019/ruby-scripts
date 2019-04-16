desc "Calculate maximum"
task :maximum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # Maximum
  # =======

  # Yes, we realize that we could just use .max, but don't; instead, practice using .each to solve this problem.

  # To find the maximum of a list as a human:

  #  - I write down the first item in the list as the maximum (even though it may not be the real one).
  #  - Next, I go through the rest of the list; for each element,
  #    - I check if it is larger than what I previously wrote down as the maximum. If so,
  #      - I replace the previous max with it.
  #    - If not, I do nothing and go to the next element.
  #  - After we've looked at every element, what we're left with should be the real maximum
  
  max_element = numbers[0]
  
  numbers.each do |element|
    # if the minimum is greater than the next element, we use element as new minimum
    if max_element < element
      max_element = element
    end
  end
  
  ap("Your numbers:")
  ap(numbers)
  # print this, convert to string
  ap("Maximum: " + max_element.to_s)
  

end
