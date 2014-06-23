require 'httparty'

response = HTTParty.get('http://worldcup.sfg.io/matches/today')

monkey = response.parsed_response

monkey.each do |match|
  puts "==================="
  puts match['match_number']
  puts "-------------------"
end

