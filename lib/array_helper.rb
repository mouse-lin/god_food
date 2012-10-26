class Array 

  def to_h(other) 
    Hash[ *(0...self.size()).inject([]) { |arr, ix| arr.push(self[ix], other[ix]) } ] 
  end 

end
