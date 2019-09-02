class MusicImporter 
  attr_reader :path 
  def initialize(path)
@path=path



end  
 def files 
   array = Dir.entries(path)
   binding.pry 
   Dir.entries(-path)
 end
  
  
  
  
  
end