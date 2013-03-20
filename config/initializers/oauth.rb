require 'instagram'

Instagram.configure do |config|
  config.client_id = ENV['INSTAGRAM_KEY']
  config.client_secret = ENV['INSTAGRAM_SECRET']
end

INSTAGRAM_CALLBACK_URL = "http://localhost:3000/instagram"