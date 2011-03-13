$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'eoflife'

client = Eoflife::Client.new
pp client.search("lion")

# pp client.search("lion", {:page => 1, :exact => 1})