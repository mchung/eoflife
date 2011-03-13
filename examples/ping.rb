$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'eoflife'

client = Eoflife::Client.new
rv = client.ping
puts rv.response.message
