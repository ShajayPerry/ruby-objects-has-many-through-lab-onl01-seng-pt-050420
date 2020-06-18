class Artist
  attr_accessor :name

@@all = []
  
  
  def initialize(name)
    @songs = []
    @name = name
    @@all << self 
  end
  
  def self.all
   @all
  end 

  def songs
    @songs
  end

  def new_song(song)
    @songs << song
    song.artist = self
  end

  def genres                       
    self.songs.collect do |song|
      song.genre
    end
  end
end