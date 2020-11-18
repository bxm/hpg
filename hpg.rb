require 'optimist'

class Hpg
  attr_reader :rows, :cols, :opts
  def initialize
    @rows, @cols = winsize
    @opts = parse_opts
  end

  def winsize
    require 'io/console'
    IO.console.winsize
  end

  def parse_opts
    Optimist::options do
      opt :file, "File to process", :type => :string
      opt :columns, "Now many columns to display", :default => 2
    end
  end

  def column_width
    @cols / @opts[:columns]
  end

  # do something like:
  # figure out how wide each column can be
  # read the file and wrap the lines per the width
  # find the number of lines
  # break up the file into number-of-lines blocks (fill left most blocks 

end

p = Hpg.new
# pp p.rows, p.cols
pp p.column_width
#pp winsize
#opts = parse_opts
#pp opts



