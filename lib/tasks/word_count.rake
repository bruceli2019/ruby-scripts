desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read

  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  # get rid of the \n
  special_word = open(path_to_special_word).read.chomp

  # =====================================================================
  # Your code goes below.
  # The text from the file is in the variable 'text'.
  # The special word from the file is in the variable 'special_word'.
  # =====================================================================
  
  # get rid of the final \n with .chomp
  num_char = text.chomp.length
  
  # get rid of all spaces
  text_nosp = text.gsub(/\s+/,"")
  num_char_nosp = text_nosp.length
  
  # need to clean the string of everything except whitespace and alphanumerics (i.e. remove punctuation), and make everything lowercase
  
  clean_text = text.gsub(/[^a-z0-9\s]/i, "").downcase
  
  # turn string into array
  sent_array = clean_text.split
  
  # iterate over array and count number of special words
  num_spec_word = 0
  sent_array.each do |new_word|
    #need to get rid of the \n on special_word
    if special_word == new_word
      num_spec_word = num_spec_word + 1
    end
  end
  
  ap("File input: " + text)
  ap("Character count (with spaces): " + num_char.to_s)
  ap("Character count (without spaces): " + num_char_nosp.to_s)
  ap("Occurences of " + "'" + special_word + "'" + ": " + num_spec_word.to_s)
  
end
