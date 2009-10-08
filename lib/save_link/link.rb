require 'dm-core'
require 'dm-timestamps'

module SaveLink
  class Link
    include DataMapper::Resource
    
    property :id, Serial
    property :title, String
    property :url, String
    property :created_at, DateTime

    def domain
      url[/^(?:http\:\/\/(?:www\.)?)?([a-zA-Z0-9\-\.]+)(?:\:\d+)?(?:\/.*)?$/, 1]
    end
  end
end
