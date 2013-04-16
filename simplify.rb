#!/usr/bin/env ruby
require 'feedzirra'

class Simplify

  def initialize( feed, page )
    @page = page
    @feed = feed
    start_template
    add_posts
    end_template
    print "page generated!\n"
    system("open simplify.html")
  end

  def start_template
    File.open('temp1.html').each do |line|
      @page << line
    end
    @page << "<h1 class='title'> <a href='#{@feed.url}'> #{@feed.title} </a> </h1>"
  end

  def end_template
    File.open('temp2.html').each do |line|
      @page << line
    end
  end

  def add_posts
    entries = @feed.entries
    entries.each do |entry|
      @page << "<div class='post'>"
      @page << "<h2 class='post-title'> #{entry.title} </h2>"
      @page << "#{entry.content} </div>"
      @page << "\n"

    end
  end

end

urls = Array.new

File.open('feeds.conf').each do |url|
  urls.push( url )
end

feed = Feedzirra::Feed.fetch_and_parse( urls.first )
simplify = File.open("simplify.html", "w")
blog = Simplify.new( feed, simplify )

simplify.close
