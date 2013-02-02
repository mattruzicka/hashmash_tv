require 'instagram'

OAUTH = YAML.load(File.open("#{::Rails.root}/config/oauth.yml").read)

Instagram.configure do |config|
  config.client_id = ENV['instagram']['key']
  config.client_secret = ENV['instagram']['secret']
end

INSTAGRAM_CALLBACK_URL = "http://localhost:3000/instagram"