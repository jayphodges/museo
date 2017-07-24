require './lib/museum'
require 'pry'

class Curator
  attr_reader :artists,
              :museums,
              :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
    @incrementor = 0
  end

  def add_museum(name)
    @incrementor += 1
    name[:id] = @incrementor.to_i
    Museum.new(name)
  end

  def add_photo(name)
    name = Photograph.new
  end

  def add_artist(name)
    name = Artist.new
  end
# > curator.add_museum({name: "MoMA"})
#
# > curator.museums
# # => [#<Museum:0x007f98a91a86e8 @id=1, @name="MoMA">]
#
# > curator.museums.count
# # => 1
#
# > curator.museums.first.id
# # => 1
#
# > curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
#
# > curator.artists
# # => [#<Artist:0x007f98a9b3bd90
#   @born=1902,
#   @country="United States",
#   @died=1984,
#   @id=1,
#   @name="Ansel Adams">]
#
# > curator.artists.count
# # => 1
#
# > curator.arists.first.id
# # => 1
#
# > curator.add_photograph({name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})
#
# > curator.photographs
# # => [#<Photograph:0x007f98a9162058
#   @artist_id=1,
#   @id=1,
#   @museum_id=1,
#   @name="Moonrise, Hernandez",
#   @year=1941>]
#
# > curator.photographs.count
# # => 1
#
# > curator.photographs.first.id
# # => 1

end
