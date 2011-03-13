require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Eoflife" do

  before(:each) do
    @client = Eoflife::Client.new
  end

  it "should #ping" do
    stub_endpoint("http://www.eol.org/api/ping.json", "ping.json")
      
    r = @client.ping
    r.response.message.should == "Success"
  end

  it "should #search" do
    stub_endpoint("http://www.eol.org/api/search/1.0/Ursus.json?", "search.json")  
      
    r = @client.search("Ursus")
    r.totalResults.should == 126
  end

  # it "should fetch #pages" do
  #   stub_endpoint("http://www.eol.org/api/pages/1.0/1045608.json?", "pages.json")  
  #     
  #   r = @client.pages("1045608", {:common_names => 1, :details => 1, :images => 2, :subjects => "all", :text => 2})
  #   r.taxonConcepts[0].sourceIdentfier.should == 154396
  # end

end
