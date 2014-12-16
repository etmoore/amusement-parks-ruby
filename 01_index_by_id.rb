## Challenge 1 - Indexing by ID

#You need to provide a way to get extremely fast access to amusement parks by their ID.

# So given the following array:
require 'pp'

id_index = [
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

# Your code should produce the following hash:
#
# {
#   546 => {
#     :id=>546,
#     :name=>"Kalahari Resorts",
#     :city=>"Wisconsin Dells",
#     :state=>"Wisconsin",
#     :country=>"United States"
#   },
#   547 => {
#     :id=>547,
#     :name=>"Little Amerricka",
#     :city=>"Marshall",
#     :state=>"Wisconsin",
#     :country=>"United States"
#   }
# }

result = {}
id_index.each do |index|
  result[index[:id]] = index
end
pp result
