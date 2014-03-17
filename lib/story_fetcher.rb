require "story_fetcher/feed"
require "feedzirra"

module StoryFetcher
  def self.fetch_all_feeds
    StoryFetcher::Feed.all.each do |feed|
      fetched_feed = Feedzirra::Feed.fetch_and_parse(feed.url)
      if fetched_feed.is_a?(Feedzirra::Parser::RSS)
        yield feed, fetched_feed.entries 
      end
    end
  end
end
