class TwitterStatus
  attr_accessor :default_ttl
  attr_accessor :user
 
  # if no user is initialized, then use own screen_name from Twitter
  def user
     @user  || Twitter.user.screen_name
  end
 
  # refresh time
  def default_ttl
     @default_ttl  || 1.hour
  end
 
  def timeline
    unless is_fresh?
      reload
    end
    read_timeline
  end
 
  # Re-fetch timeline from twitter and saves it to the cache again
  def reload
    set_timeline
    set_timestamp
  end
 
 
private
  def cache_key
    "twitter_timeline_#{user.to_s}"
  end
 
  def cache_timestamp
    "twitter_timestamp_#{user.to_s}"
  end
 
  def fetched_at
    Rails.cache.read(cache_key)
  end
 
  def read_timeline
    Rails.cache.read(cache_key)
  end
 
  def set_timestamp
    Rails.cache.write(cache_timestamp, Time.now, timeToLive: default_ttl)
  end
 
  def set_timeline
    Rails.cache.write(cache_key, Twitter.user_timeline(user, include_entities: true))
  rescue
    Rails.logger.info("Error: Cannot connect to twitter or network down")
    Rails.cache.write(cache_key, [])
  end
 
  def is_fresh?
    fetched_at && fetched_at.is_a?(Time) && ((fetched_at + default_ttl) > Time.now)
  end
 
end