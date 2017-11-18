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

  def self.find_by_name(song_name)
    @@all.detect{|song| song.name == song_name}
  end

  def Song.find_or_create_by_name(song_name)
    @@all.each.include?(song_name)
    return song_name
  else
    self.create
    return song_name
  end

  def save
    self.class.all << self
  end

end
