require 'httparty'

response = HTTParty.get('http://worldcup.sfg.io/matches/today')

monkey = response.parsed_response

monkey.each do |match|
  puts "=====Match ##{match['match_number']} ============="
  puts "| location | #{match['location']} |"
  puts "| teams: #{match['home_team']['country']} vs. #{match['away_team']['country']} |"
end

