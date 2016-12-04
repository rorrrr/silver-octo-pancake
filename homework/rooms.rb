class Rooms

attr_reader :name , :song_array , :guests_array

  def initialize(name)
    @name = name
    @song_array = []
    @guests_array = []
  end

  def number_of_songs(name)
   return @song_array.count
  end

  def number_of_guests()
    return @guests_array.count
  end

  def add_guest_to_room(guest)
    if number_of_guests < 2
      then @guests_array << guest
    else
      puts "The room is full"
    end
  end

  def remove_guest_from_room(guest)
    for each_guest in @guests_array
      if each_guest == guest
       then @guests_array.delete guest
      end
    end
  end

  def add_song(song)
    puts "What artist would you like to hear!?"
    artist = gets.chomp
    puts "Classic, which song?"
    title = gets.chomp
    song = ({"#{title}" => "#{artist}"})
    @song_array << song
    puts "Added to Queue: #{title} by #{artist}!"
  end

  # def guests_cheer_favourite(cheer)
  #   if 
  # end



end