Sidekiq.configure_server do |config|
    config.redis = { url: 'redis://localhost:6379/0' } # Adjust with your Redis server settings
  end
  
  Sidekiq.configure_client do |config|
    config.redis = { url: 'redis://localhost:6379/0' } # Adjust with your Redis server settings
  end
  