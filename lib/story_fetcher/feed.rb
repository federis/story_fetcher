module StoryFetcher
  class Feed < ::ActiveRecord::Base
    self.table_name_prefix = 'story_fetcher_'
  end
end