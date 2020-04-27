require 'rspec'

class RandEnding
  def user_ending
  endings = ["Human", "Replicant", "Rogue Replicant"]
  ending = endings.sample
    if
    #   true
    # elsif ending == endings[1]
    #   true
    # elsif ending == endings[2]
      true
    else
      false
    end
  end
end

describe RandEnding do
# -- checks to see if the method user_ending prints out a random ending to the User, and then returns returns true if it passes, else it returns false
  describe '#user_ending' do
    it "should return a random ending" do
      expect(subject.user_ending).to eql(true) 
    end
  end
end