class Guests

attr_reader :name , :favourite_song
attr_accessor :cash

  def initialize(name, favourite_song, cash)
    @name = name
    @favourite_song = favourite_song
    @cash = cash
  end

  def guest_can_afford_entry(cash)
    return @cash >= 5
  end

  def charge_guest(cash)
    if guest_can_afford_entry(cash)
      then @cash += -5
    else
      return "BOY! YA POOR, GET OUTTA HERE"
    end
  end



end