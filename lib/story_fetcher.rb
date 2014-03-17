require "story_fetcher/feed"
require "feedjira"

module StoryFetcher
  def self.fetch_all_feeds
    StoryFetcher::Feed.all.each do |feed|
      fetched_feed = Feedjira::Feed.fetch_and_parse(feed.url)
      if fetched_feed.is_a?(Feedjira::Parser::RSS)
        yield feed, fetched_feed.entries 
      end
    end
  end
end
