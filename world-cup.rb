require 'httparty'

response = HTTParty.get('http://worldcup.sfg.io/matches/today')

monkey = response.parsed_response

monkey.each do |match|
  puts "=====Match ##{match['match_number']} ============="
  puts "| Location | #{match['location']} |"
  puts "| Teams: #{match['home_team']['country']} vs. #{match['away_team']['country']} |"
  puts "| Status: #{match['status']} |"
  puts "| Winner: #{match['winner']} |"
end

