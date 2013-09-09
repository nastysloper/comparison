require './building'

describe Building do
  describe ' #measure ' do 
    it 'tells you how tall a building is' do
      sears_tower = Building.new("Sears", 1000)
      sears_tower.measure.should eq 1000
    end
  end

  describe ' #compare ' do
    it 'tells you which building is taller' do
       sears_tower = Building.new("Sears", 1000)
       my_house = Building.new("My house", 30)
       my_house.compare(sears_tower).should eq "Sears"
    end
  end

end
