class Genre
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
    song.genre = self unless song.genre
@song << song unless @song.include?(song)
    
    
    end
  def artist 
    songs.collect { |song| song.artist }.uniq
  end
end