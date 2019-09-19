class Song
  attr_accessor :artist, :name, :genre
  
  @@all = []
 
  def initialize(name, genre)
    @name = name
    @genre = genre
    save
  end
  
  def save
    @@all
  end
  
  def self.all
    @all
  end
  
  def artist_name
    self.artist.name
  end
  
end

class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
  
  # def add_song(song)
  #   song.artist = self
  # end
  
  def add_song_by_name(name, genre)
    song = Song.new(name,genre)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
end

# kiki = Song.new("In My Feelings", "hip-hop")
# hotline = Song.new("Hotline Bling", "pop")

# drake = Artist.new("Drake")
# drake.add_song(kiki)
# drake.add_song(hotline)

# puts kiki.artist.name

lil_nas_x = Artist.new("Lil Nas X")
rick = Artist.new("Rick Astley")
 
old_town_road = Song.new("Old Town Road","hip-hop")
never_gonna_give_you_up = Song.new("Never Gonna Give You Up","pop")
 
old_town_road.artist = lil_nas_x
never_gonna_give_you_up.artist = rick
 
Song.all.first.name #=> "Old Town Road"
Song.all.first.genre #=> "hip-hop"
Song.all.first.artist #=> #<Artist:0x00007ff1d90dbf38 @name="Lil Nas X", @songs=[]>
Song.all.first.artist.name #=> "Lil Nas X"
 
 
Song.all.last.name #=> "Never Gonna Give You Up"
Song.all.last.genre #=> "pop"
Song.all.last.artist #=> #<Artist:0x00007ff1d90dbf38 @name="Rick Astley", @songs=[]>
Song.all.last.artist.name #=> "Rick Astley"