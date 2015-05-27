# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

require 'flickraw'

FlickRaw.api_key="b941a9b6380b00293e2f812c8fa4a3c3"
FlickRaw.shared_secret="81cd8ed306ec86a3"

list   = flickr.photos.getRecent

id     = list[0].id
secret = list[0].secret
info = flickr.photos.getInfo :photo_id => id, :secret => secret

puts info.title           # => "PICT986"
puts info.dates.taken     # => "2006-07-06 15:16:18"

sizes = flickr.photos.getSizes :photo_id => id

original = sizes.find {|s| s.label == 'Original' }
puts original.width       # => "800" -- may fail if they have no original marked image