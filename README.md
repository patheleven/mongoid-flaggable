# Mongoid::Flaggable

Do you want to flag content that you have stored in mongoid in your app?

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid-flaggable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid-flaggable

## Usage

To have content that you can flag in your application just include 
Mongoid::flaggable in your Mongoid Documents like so:

    class Article
      include Mongoid::Document
      include Mongoid::Flaggable
    end

Once you have done so there will be a couple of methods that will be 
injected in your _Article_ class: 

  - \#flag_with_reason
  - \#flag_for_user_with_reason (_note that this method will only be 
    injected if there is a User object present in the vm at runtime_)
 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
