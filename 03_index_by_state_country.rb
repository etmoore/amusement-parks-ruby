## Challenge 3 - Indexing by Country and State

# Given the following array:

require 'pp'

resorts = [
  {
    :id=>3,
    :name=>"Galaxyland",
    :city=>"Edmonton",
    :state=>"Alberta",
    :country=>"Canada"
  },
  {
    :id=>4,
    :name=>"Heratage Park",
    :city=>"Calgary",
    :state=>"Alberta",
    :country=>"Canada"
  },
  {
    :id=>6,
    :name=>"Playland (Vancouver)",
    :city=>"Vancouver",
    :state=>"British Columbia",
    :country=>"Canada"
  },
  {
    :id=>8,
    :name=>"Crystal Palace Amusement Park",
    :city=>"Dieppe",
    :state=>"New Brunswick",
    :country=>"Canada"
  }
]

# Your code should return the following hash:

{
  "Alberta, Canada" => [
    {
      :id => 3,
      :name => "Galaxyland",
      :city => "Edmonton",
      :state => "Alberta",
      :country => "Canada"
    },
    {
      :id => 4,
      :name => "Heratage Park",
      :city => "Calgary",
      :state => "Alberta",
      :country => "Canada"
    },
  ],
  "British Columbia, Canada" => [
    {
      :id => 6,
      :name => "Playland (Vancouver)",
      :city => "Vancouver",
      :state => "British Columbia",
      :country => "Canada"
    },
  ],
  "New Brunswick, Canada" => [
    {
      :id => 8,
      :name => "Crystal Palace Amusement Park",
      :city => "Dieppe",
      :state => "New Brunswick",
      :country => "Canada"
    }
  ]
}

result = {}
resorts.each do |resort|
  state_and_country = "#{resort[:state]}, #{resort[:country]}"
  result[state_and_country] ||= []
  result[state_and_country] << resort
end
pp result
