class Artist
  
  attr_accessor :name
  
  @@songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
 
  def add_song(song)
    if @songs.include?(song) === false
      @@songs << song
    end
    song.artist = self
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@songs << song
    song.artist = self
  end  
  
  def songs
    @songs
  end
  
  def self.song_count
    @@songs.count
  end
  
end