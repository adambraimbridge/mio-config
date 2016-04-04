require 'mio/client'
require 'mio/search'
require 'mio/errors'

require 'mio/model'
require 'mio/model/autoload'

class Mio

  attr_accessor :base_uri, :username, :password
  attr_reader :client
  def initialize base_uri=nil, username=nil, password=nil
    @base_uri = base_uri
    @username = username
    @password = password

    if block_given?
      yield self
    end

    @client = Mio::Client.new @base_uri, @username, @password
  end

end
