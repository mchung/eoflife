$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'eoflife'

client = Eoflife::Client.new
# rv = client.pages("328672", {:images => 6, :vetted => 1, :format => "html"})
# rv = client.pages("1045608", {:common_names => "1", :details => "1", :images => "2", :subjects => "all", :text => "2"})
rv = client.pages("1045608", {:details => "1", :subjects => "all"})
pp [:response, rv]
