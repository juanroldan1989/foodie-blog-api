Sidekiq.configure_server do |config|
  config.redis = { :url => Rails.application.config.sidekiq_url }
end

Sidekiq.configure_client do |config|
  config.redis = { :url => Rails.application.config.sidekiq_url }
end
