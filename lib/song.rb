#code that relies on abstraction is more maintainable and extendable over time
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    song = Song.new
    song.save
    return song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    @@all << song
    song
  end

  def find_by_name

  end

  def save
    self.class.all << self
  end

end
