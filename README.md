eoflife - API for EOL.org/API
=============================

## Description

Eoflife is a Ruby wrapper for the [EOL API](http://www.eol.org/api).  The eoflife gem provides an easy-to-use wrapper for EOL's XML and JSON APIs.

API development is currently a work in progress.

## Synopsis

    eol = Eoflife::Client.new
    eol.ping #=> Response

    eol.search("Western Honeybee") #=> Response

## Getting Started

Use RubyGems to install the Eoflife gem

    $ gem install eoflife

## Installing on Rails 3

Add this to your `Gemfile`:

    gem "eoflife"

## Contributing to eoflife
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Thanks

 * [EOL](www.eol.org)

## See Also

 * [EOL API documentation](http://www.eol.org/api)

## Copyright

Copyright (c) 2011 Marc Chung. See LICENSE.txt for further details.

