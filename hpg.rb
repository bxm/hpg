require 'optimist'

class Hpg
  attr_reader :tlines, :twidth, :opts
  def initialize
    @tlines, @twidth = winsize
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
    @twidth / @opts[:columns]
  end

  # do something like:
  # figure out how wide each column can be (allow for column seps)
  # read the file and wrap the lines per the width
  # find the number of lines in result
  # break up the file into number-of-lines blocks (fill left most blocks first)
  # - IE if not even split left should be more full
  # - each block is an array
  # space pad each line
  # fill each line of output array from each line of block arrays
  #

end

p = Hpg.new
# pp p.tlines, p.twidth
pp p.column_width
#pp winsize
#opts = parse_opts
#pp opts



