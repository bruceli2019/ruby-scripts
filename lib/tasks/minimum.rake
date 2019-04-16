desc "Calculate minimum"
task :minimum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MINIMUM
  # =======

  # Yes, we realize that we could just use .min, but don't; instead, practice using .each to solve this problem.

  # To find the minimum of a list as a human:

  #  - I write down the first item in the list as the minimum (even though it may not be the real one).
  #  - Next, I go through the rest of the list; for each element,
  #    - I check if it is smaller than what I previously wrote down as the minimum. If so,
  #      - I replace the previous min with it.
  #    - If not, I do nothing and go to the next element.
  #  - After we've looked at every element, what we're left with should be the real minimum
  
  # first, we check if the array is empty. we make the minimum the first element in the list. we store that value, then compare it with the next value
  
  min_element = numbers[0]
  
  numbers.each do |element|
    # if the minimum is greater than the next element, we use element as new minimum
    if min_element > element
      min_element = element
    end
  end
  
  ap("Your numbers:")
  ap(numbers)
  # print this, convert to string
  ap("Minimum: " + min_element.to_s)
  
end
