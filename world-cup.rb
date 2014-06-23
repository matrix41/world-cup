require 'httparty'

response = HTTParty.get('http://worldcup.sfg.io/matches/today')

monkey = response.parsed_response

monkey.each do |match|
  puts "============ Match ##{match['match_number']} ============"
  puts "| Location: #{match['location']} |"
  puts "| Teams: #{match['home_team']['country']} vs. #{match['away_team']['country']} |"
  puts "| Status: #{match['status']} |"
  if ( match['winner'].nil? )
    puts "| Winner: No Winner "
  else
    puts "| Winner: #{match['winner']} |"
  end
end
puts "==================================="
