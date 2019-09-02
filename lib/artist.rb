class Artist
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :songs
  @@all=[]
  
  def self.all
    @@all 
  end 
  def self.destroy_all 
    @@all.clear
  end
    def self.create(name)
      new(name).save
      
    end
  
 def initialize(name)
   @name=name
   @song=[]
 end
  def save 
   @@all << self
   self
    
  end
  def add_song(song) 
    song.artist=self unless song.artist
    @song << song unless @songs.include?(song)
  end
  def genre 
   songs.collect { |song| song.genre }.uniq
  
  end
    
  
end