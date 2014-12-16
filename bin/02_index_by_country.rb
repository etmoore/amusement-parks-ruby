require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
parks = YAML.load(raw_data)

result = {}

parks.each do |park|
  result[park[:country]] ||= []
  result[park[:country]] << park
end

pp result
