#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  #Implement the following read-only attributes in the LineAnalyzer class. 
  #* highest_wf_count - a number with maximum number of occurrences for a single word (calculated)
  #* highest_wf_words - an array of words with the maximum number of occurrences (calculated)
  #* content          - the string analyzed (provided)
  #* line_number      - the line number analyzed (provided)
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number

  #Add the following methods in the LineAnalyzer class.
  #* initialize() - taking a line of text (content) and a line number
  #* calculate_word_frequency() - calculates result
  def initialize (content, line_number)
    @content = content
    @line_number = line_number
    @highest_wf_words = []
    calculate_word_frequency
  end

  def calculate_word_frequency
    word_frequency = Hash.new(0)
    @content.split.each do |word|
      word_frequency[word.downcase] += 1
    end
    @highest_wf_count = word_frequency.values.max
    word_frequency.each do |k,v|
      @highest_wf_words << k if @highest_wf_count == v
    end
  
  end


end

  #Implement the initialize() method to:
  #* take in a line of text and line number
  #* initialize the content and line_number attributes
  #* call the calculate_word_frequency() method.

  #Implement the calculate_word_frequency() method to:
  #* calculate the maximum number of times a single word appears within
  #  provided content and store that in the highest_wf_count attribute.
  #* identify the words that were used the maximum number of times and
  #  store that in the highest_wf_words attribute.

#  Implement a class called Solution. 
class Solution

  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute 
  #  equal to the highest_count_across_lines determined previously.
<<<<<<< HEAD:rubyonrails/01_Intro_to_Ruby/module02/assignment-Calc-Max-Word-Freq/module2_assignment.rb
  attr_reader :highest_count_across_lines, :highest_count_words_across_lines, :analyzers
=======

  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

>>>>>>> dabbdc5c549263e7e5afc3b13e4d2726e081d7a5:rubyonrails/01_Intro_to_Ruby/mod2_sol/module2_assignment.rb
  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers and stores them in analyzers.
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  #  highest_count_words_across_lines attribute values
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in 
  #  highest_count_words_across_lines in the specified format
<<<<<<< HEAD:rubyonrails/01_Intro_to_Ruby/module02/assignment-Calc-Max-Word-Freq/module2_assignment.rb
  def initialize
    @analyzers = []
  end

  def analyze_file()
    local_count = 0
    File.foreach('test.txt') do |line|
      @analyzers << LineAnalyzer.new(line.chomp, local_count)
      local_count+=1
    end
  end



  def calculate_line_with_highest_frequency ()
    @highest_count_across_lines = @analyzers.max_by do |i|
      i.highest_wf_count
    end.highest_wf_count

    @highest_count_words_across_lines = []
    @analyzers.each do |la_obj|
      @highest_count_words_across_lines << la_obj if la_obj.highest_wf_count == @highest_count_across_lines
    end
  end  


  def print_highest_word_frequency_across_lines
   
    @highest_count_words_across_lines.each do |la_hw_obj|
      p "The following words appear the most (#{@highest_count_across_lines} times) at line #{la_hw_obj.line_number} :"
      puts la_hw_obj.highest_wf_words
      puts "____________________________________________________________________"
    end
  end



end
=======

  def analyze_file
    @analyzers = LineAnalyzer.new (File.foreach ('text.txt') do |line| line.split, line )
      

  end

  
>>>>>>> dabbdc5c549263e7e5afc3b13e4d2726e081d7a5:rubyonrails/01_Intro_to_Ruby/mod2_sol/module2_assignment.rb
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines 
  #  attribute value determined previously and stores them in highest_count_words_across_lines.

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format

