module Human
  #create setter and getter
  attr_accessor :name, :height, :weight
  
  def run
    #self invoke
    puts self.name + " runs"
  end
end