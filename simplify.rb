require 'feedzirra'
# here is the beginning of a project to create a very simple blog reader that
# utilizes static page generation with a cool looking design by me...

# grab entries from the feed
def getEntries( url )
  feed = Feedzirra::Feed.fetch_and_parse( url )
  entries = feed.entries
end

def startTemplate()
  # insert beginning of html template
  document = File.open("simplify.html", "w")

  File.open('temp1.html').each do |line|
    document << line
  end

  document.close
end

def endTemplate()
  document = File.open( "simplify.html", "w")

  File.open('temp2.html').each do |line|
    document << line
  end

  document.close
end

def genPage( entries )
  # create a div for each entry content

  startTemplate()

  entries.each do |entry|
    print entry.content
  end

  #  endTemplate()

end

entries = getEntries("http://thissongissick.com/blog/feed/")
genPage( entries )
# take entries and generate page
