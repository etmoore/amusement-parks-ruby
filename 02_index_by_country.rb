## Challenge 2 - Indexing by Country

# So given the following array:
require 'pp'

resorts = [
  {
    :id=>546,
    :name=>"Kalahari Resorts",
    :city=>"Wisconsin Dells",
    :state=>"Wisconsin",
    :country=>"United States"
  },
  {
    :id=>547,
    :name=>"Little Amerricka",
    :city=>"Marshall",
    :state=>"Wisconsin",
    :country=>"United States"
  },
  {
    :id=>2,
    :name=>"Calaway Park",
    :city=>"Calgary",
    :state=>"Alberta",
    :country=>"Canada"
  }
]

# Your code should produce the following hash:

{
  "Canada" => [
    {
      :id=>2,
      :name=>"Calaway Park",
      :city=>"Calgary",
      :state=>"Alberta",
      :country=>"Canada"
    }
  ],
  "United States" => [
    {
      :id=>546,
      :name=>"Kalahari Resorts",
      :city=>"Wisconsin Dells",
      :state=>"Wisconsin",
      :country=>"United States"
    },
    {
      :id=>547,
      :name=>"Little Amerricka",
      :city=>"Marshall",
      :state=>"Wisconsin",
      :country=>"United States"
    }
  ]
}

result = {}
resorts.each do |resort|
  result[resort[:country]] ||= []
  result[resort[:country]] << resort
end
pp result
