class Song 
   extend Concerns::Findable
  attr_accessor :name 
  attr_reader :artist :genre
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
    def self.find_by_name(name)
     self.all.find do |song| 
      song.name == name
    end
    def self.find_or_create_by_name(name)
    self.find_by_name(name) ||  self.create(name) 
      
    end
  
 def initialize(name,artist=nill,genre=nill)
   @name=name
   self.artist=artist
   self.genre=genre
 end
  def save 
   @@all << self
   self
    
  end
  def artist=(artist)
    @artist=artist
    artist.add_song(self) if artist
    
  end
  def genre=(genre)
    @genre=genre 
    genre.add_song(self)
if genre  
end
end