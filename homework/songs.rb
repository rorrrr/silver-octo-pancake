class Songs
  

  attr_reader :songs

  def initialize(songs)
    @songs = songs
  end


  # def find_artist(songs, song_title)
  #   for each_song in songs
  #     if each_song.key == song_title
  #       return each_song.value
  #     end
  #   end
  # end


  # def add_song_to_library(newsong)
  #   @songs << newsong
  # end

end


# hash.key(value) => key