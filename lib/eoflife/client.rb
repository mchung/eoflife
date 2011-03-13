module Eoflife
  class Client
    include HTTParty
    base_uri "http://www.eol.org/api"

    # Pings the API
    #
    # @see http://www.eol.org/api/docs/ping
    # @return [Hashie::Mash] Success or failure results
    def ping
      handle_response self.class.get("/ping.json")
    end
    
    # Searches EOL
    #
    # @see http://www.eol.org/api/docs/search
    # @param [String] search_query The species you're looking for.
    # @param [Hash] query_options The QUERY_STRING as a hash
    # @option query_options [String] :page Limits the number of returned image objects, 0-75. 
    # @option query_options [String] :exact will find taxon pages if the preferred name or any synonym or common name exactly matches the search term, `0` or `1`
    # @return [Hashie::Mash] Parsed OpenSearch query
    def search(search_query, query_options = {})
      s = URI.escape(search_query)
      handle_response self.class.get("/search/1.0/#{s}.json", :query => query_options)
    end
    
    # Pages returns the scientific name for that page, and optionally returns information 
    # about common names, media (text, images and videos), and references to the hierarchies 
    # which recognize the taxon described on the page.
    #
    # @see http://www.eol.org/api/docs/pages
    # @param [String] taxon_id The taxon ID
    # @param [Hash] query_options The QUERY_STRING as a hash
    # @option query_options [String] :images Limits the number of returned image objects, `0` to `75`
    # @option query_options [String] :videos Limits the number of returned videos objects, `0` to `75`
    # @option query_options [String] :text Limits the number of returned text objects, `0` to `75`
    # @return [Hashie::Mash] the scientific name for that page
    def pages(taxon_id, query_options = {})
      handle_response self.class.get("/pages/1.0/#{taxon_id}.json", :query => query_options)
    end

    # @private
    def handle_response(response)
      # case response.code
      # when 400...500
      #   raise Error.new(response)
      # else
      #   response
      # end
      if response.is_a?(Array)
        response.map{|item| Hashie::Mash.new(item)}
      else
        Hashie::Mash.new(response)
      end
    end
  end
end