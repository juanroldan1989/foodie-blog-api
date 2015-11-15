# Maps environment variables into configuration settings

#SideKiq
Rails.application.config.sidekiq_url = Figaro.env.sidekiq_url
