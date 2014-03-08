class CreateStoryFetcherFeeds < ActiveRecord::Migration
  def self.up
    create_table :story_fetcher_feeds, :force => true do |t|
      t.string :url
      t.timestamps
    end
  end

  def self.down
    drop_table :story_fetcher_feeds
  end
end
