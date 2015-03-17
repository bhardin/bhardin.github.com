require 'command_line_reporter'

class WordCount
  include CommandLineReporter
  attr_accessor :files, :articles, :total_words

  ERASE_CHAR = "\10"

  def initialize(files)
    self.formatter = 'progress'
    self.files = files
    self.articles = {}
    self.total_words = 0
  end

  def calculate
    @total_words = 0
    @articles = {}

    files.each_with_index do |file, index|
      status_message = "Processing #{index}"
      progress(status_message + (ERASE_CHAR * status_message.length))
      f = File.new(file)
      word_count = f.read.scan(/\w+/).size
      @total_words += word_count
      @articles[file] = word_count
      progress("-"  + ERASE_CHAR)
    end

    @total_words = total_words
  end

  def print_stats(options = {})
    calculate

    if options[:print_files]
      @articles = articles.sort_by {|k,v| v}

      @articles.each do |k,v|
        puts "#{v}: #{k}"
      end
    end

    horizontal_rule :width => 60, :color => 'green'
    aligned("Total Words Written: #{total_words}")
    aligned("Mean Post Length:    #{mean_word_count}")
    aligned("Median Post Length:  #{medain_word_count}")
    horizontal_rule :width => 60, :color => 'green'
  end

  def total_word_count
    @total_words
  end

  def mean_word_count
    total_word_count / @articles.length
  end

  def medain_word_count
    median(@articles.to_a.map! { |k| k[1] })
  end

  private

  def median(array)
    sorted = array.sort
    len = sorted.length
    
    return (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
  end
end

desc "Counts the number of words written"
task :count_words do |t|
  abort("rake aborted: '#{CONFIG['posts']}' directory not found.") unless FileTest.directory?(CONFIG['posts'])
  files = Dir.glob(File.join(CONFIG['posts'], '*'))

  wc = WordCount.new(files)
  wc.print_stats()
end

