require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")

class SongsSpec < Minitest::Test

  def setup

  song1 = Songs.new({"Lala" => "Bla"})
  song2 = Songs.new({"Stan" => "Eminem"})
  @songs = [song1 , song2]

  end

    def test_count_song_library
      assert_equal( 2, @songs.count )
    end


  # def test_artist_by_title__Eminem(songs, song_title)
  #   assert_equal( "Eminem" , @songs.find_artist("Stan"))
  # end

  # def test_can_add_song_to_library()
  #   song3 = Songs.new({"Rock" => "Rockers"})
  #   assert_equal( 3, @songs.count)
  # end

  # CANT WORK OUT HOW TO ADD SONGS - SO RATHER THAN MATCH SONGS TO DATABASE TO PLAY. GUESTS WOULD REQUEST SONG - IT WOULD BE ADDED TO ROOM BY THEM


end