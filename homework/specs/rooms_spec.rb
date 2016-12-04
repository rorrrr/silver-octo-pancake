require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomsSpec < Minitest::Test

  def test_create_room_class
    rooms1 = Rooms.new("Room A")
    assert_equal(Rooms, rooms1.class)
  end

  def test_can_read_room_name
    rooms1 = Rooms.new("Room A")
    assert_equal("Room A", rooms1.name )
  end

  def test_can_count_songs_in_room
    rooms1 = Rooms.new("Room A")
   assert_equal(0, rooms1.number_of_songs(name))
  end

  def test_can_add_song_to_room
    rooms1 = Rooms.new("Room A")
    song1 = Songs.new({"Stan" => "Eminem"})
    rooms1.add_song(song1)
    assert_equal(1, rooms1.number_of_songs(name))
  end

  def test_can_have_multiple_songs_in_multiple_rooms
    rooms2 = Rooms.new("Room B")
    song1 = Songs.new({"Stan" => "Eminem"})
    song2 = Songs.new({"rock" => "rockers"})
    rooms2.add_song(song1)
    rooms2.add_song(song2)
    assert_equal(2, rooms2.number_of_songs(name))
  end

  def test_can_see_empty_room
    rooms1 = Rooms.new("Room A")
    assert_equal(0, rooms1.number_of_guests())
  end

  def test_can_count_guests_in_room__free
    rooms1 = Rooms.new("Room A")
    guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 50 )
    guest2 = Guests.new("Rory", {"Rock" => "Rockers"} , 60 )
    rooms1.add_guest_to_room(guest1)
    rooms1.add_guest_to_room(guest2)
   assert_equal(2, rooms1.number_of_guests())
  end

  def test_can_count_guests_in_room__capacity
    rooms1 = Rooms.new("Room A")
    guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 50 )
    guest2 = Guests.new("Rory", {"Rock" => "Rockers"} , 60 )
    guest3 = Guests.new("Jay", {"Lala" => "Musicals"}, 10)
    rooms1.add_guest_to_room(guest1)
    rooms1.add_guest_to_room(guest2)
    rooms1.add_guest_to_room(guest3)
   assert_equal(2, rooms1.number_of_guests())
  end

  def test_remove_guest_from_room
    rooms1 = Rooms.new("Room A")
    guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 50 )
    guest2 = Guests.new("Rory", {"Rock" => "Rockers"} , 60 )
    rooms1.add_guest_to_room(guest1)
    rooms1.add_guest_to_room(guest2)
    rooms1.remove_guest_from_room(guest1)
    assert_equal(1, rooms1.number_of_guests())
  end

  def test_guests_cheer_favourite
    rooms1 = Rooms.new("Room A")
    guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 50 )
    rooms1.add_guest_to_room(guest1)
    rooms1.cheer_favourite(guest1)
    assert_equal("Woo", rooms1.cheer_favourite)
  end


end