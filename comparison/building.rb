class Building
  attr_reader :name, :height

def initialize name, height
  @name = name
  @height = height
end

  def measure
    height
  end

  def compare building
    return "equal" if self.height == building.height
    return self.name if self.height > building.height
    return building.name if self.height < building.height
  end

end
