require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
parks = YAML.load(raw_data)

result = {}

parks.each do |park|
  state_and_country = "#{park[:state]}, #{park[:country]}"
  result[state_and_country] ||= []
  result[state_and_country] << park
end

pp result
