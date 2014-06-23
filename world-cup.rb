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


# require 'httparty' # this looks exclusively in gems directory
# # require_relative 'httparty' # this looks in your current directory

# # response is a string; get returns a JSON-compliant page


# class WorldCupFan
#     def yells_the_outcomes
#         response = HTTParty.get('http://worldcup.sfg.io/matches/today')
#         array_of_matches = response.parsed_response
#         array_of_matches.each do |match|
#            puts match['status']
#         end
#     end
# end

# fan = WorldCupFan.new

# fan.yells_the_outcomes()
