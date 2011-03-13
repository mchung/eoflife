$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'eoflife'
require 'webmock/rspec'
require 'json'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  
end

def fixture_file(filename)
  return '' if filename == ''
  file_path = File.expand_path(File.dirname(__FILE__) + '/fixtures/' + filename)
  JSON.parse(File.read(file_path))
end

def stub_endpoint(endpoint, expected_data)
  stub_request(:get, endpoint)
    .to_return(:status => 200, :body => fixture_file(expected_data), :headers => {})
end