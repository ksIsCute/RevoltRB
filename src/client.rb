require 'httparty'

module Client
  def run(token, bot=TRUE)
    res = HTTParty.get(
      "https://api.revolt.chat/users/@me", 
      :headers => {"x-session-token": token}
    )
    puts "Logged in as #{JSON.parse(res.body)['username']}"
  end
end