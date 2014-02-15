class Configuration
  attr_accessor :config
  def initialize
  @config = {
        :consumer_key         => nil,
        :consumer_secret      => nil,
        :access_token         => nil,
        :access_token_secret  => nil,
        :filename            => "resources/in/waiting_items.txt"
    }
  end
  def get()
    return config;
  end
end
