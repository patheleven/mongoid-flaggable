require 'minitest/autorun'
require 'minitest/spec'

require 'mongoid'
require 'mongoid-minitest'

require 'flaggable'

Mongoid.configure do |config|
  config.connect_to('flaggable-specs')
end

class MiniTest::Spec
  include Mongoid::Matchers
end
