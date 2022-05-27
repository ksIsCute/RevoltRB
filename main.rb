require 'httparty'

res = HTTParty.get("https://api.revolt.chat/", headers={"x-session-token": ""})

puts res.body