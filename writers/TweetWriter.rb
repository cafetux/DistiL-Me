require 'twitter'
require_relative '../utils/ConfigArgumentCheck'

class TweetWriter
  include ConfigArgumentCheck

  def initialize(myConfig)
    checkIsPresent(myConfig,:consumer_key)
    checkIsPresent(myConfig,:consumer_secret)
    checkIsPresent(myConfig,:access_token)
    checkIsPresent(myConfig,:access_token_secret)

    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = myConfig[:consumer_key]
      config.consumer_secret     = myConfig[:consumer_secret]
      config.access_token        = myConfig[:access_token]
      config.access_token_secret = myConfig[:access_token_secret]
    end
  end
  def send(text)
    puts "tweets: "+text
    @client.update(text)
  end

end