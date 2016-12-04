require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")

class GuestsSpec < Minitest::Test

  def test_create_guest_class
    guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 50)
    assert_equal(Guests, guest1.class)
  end
 
  def test_take_guest_name
    guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 50)
    assert_equal("Amy", guest1.name)
  end

  def test_favourite_song_check
    guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 50)
    assert_equal({"Stan" => "Eminem"}, guest1.favourite_song)
  end

  def test_guest_can_afford_entry__pass
    guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 50)
    can_enter = guest1.guest_can_afford_entry(@cash)
    assert_equal(true, can_enter)
  end

  def test_guest_can_afford_entry__fail
    guest2 = Guests.new("Rory", {"Stan" => "Eminem"} , 4)
    can_enter = guest2.guest_can_afford_entry(@cash)
    assert_equal(false, can_enter)
  end

  def test_charge_guest__pass
    guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 50)
    guest1.charge_guest(@cash)
    assert_equal(45, guest1.cash )
  end

  def test_charge_guest__fail
      guest1 = Guests.new("Amy", {"Stan" => "Eminem"} , 3)
      guest1.charge_guest(@cash)
      assert_equal(3, guest1.cash )
  end
end