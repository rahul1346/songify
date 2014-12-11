module Songify
  class Albums
    attr_reader :album_name, :album_year, :album_artist

    def initialize(album_name, album_year, album_artist)
      @album_name = album_name
      @album_year = album_year.to_i
      @album_artist = album_artist
    end

  end
end