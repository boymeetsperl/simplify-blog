require 'feedzirra'
# here is the beginning of a project to create a very simple blog reader that
# utilizes static page generation with a cool looking design by me...

# grab entries from the feed
def getEntries( url )
  feed = Feedzirra::Feed.fetch_and_parse( url )
  entries = feed.entries
end

# take entries and generate page
