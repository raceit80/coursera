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
  @@count_instances=0

  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    @@count_instances+=1
  end

 

  def calculate_word_frequency
    
    @highest_wf_count= Hash.new(0)
    @content.split.each do |word|
    @highest_wf_count[word.downcase] += 1
    end
    @highest_wf_words = @highest_wf_count.max_by{|k,v| v}

    #puts @highest_wf_count
    #puts "_______"
    puts @highest_wf_words

  end

  def self.count
    @@count_instances
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
end




#  Implement a class called Solution. 
class Solution

  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute 
  #  equal to the highest_count_across_lines determined previously.
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines, :count


  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers and stores them in analyzers.
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  #  highest_count_words_across_lines attribute values
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in 
  #  highest_count_words_across_lines in the specified format

  def analyze_file
      local_var1=1
      @analyzers = Hash.new(0)
      File.foreach('test.txt') do |line|
        @analyzers[local_var1] = LineAnalyzer.new(line.split, local_var1)
        local_var1+=1
        puts local_var1
      

      end
        puts @analyzers[local_var1].calculate_word_frequency
  end

 
  @count = LineAnalyzer.count
  puts @count

  def calculate_line_with_highest_frequency
    #@highest_count_words_across_lines = @analyzers.calculate_word_frequency
    #puts @highest_count_across_lines
    #local_lineanalyzer_instance_count = LineAnalyzer.count_instances
    #puts local_lineanalyzer_instance_count
    puts @count
    #@highest_count_words_across_lines[@count] = @analyzers[@count].calculate_word_frequency
    #@count -=1
    puts "dfasf"
    #puts @analyzers.calculate_word_frequency
    puts "dfasf"
    

  end

  
  
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
end



analyze1 = LineAnalyzer.new("tiger tiger lion hello lion lion bear tiger bear lion bear lion is", 1)
analyze1.calculate_word_frequency
solution1 = Solution.new
solution1.analyze_file
solution1.calculate_line_with_highest_frequency
