require 'rspec'

class BeginTest
  def pre_test_msg
    "Alright, I'm going to ask you a series of questions, just relax and answer them as simply as you can."
  end

  def test_loop
    questions = ["question 1", "question 2", "question 3"]
    if questions.each { |question| puts question }
      true
    else
      false
    end
  end
end

describe BeginTest do
# -- checks to see if the pre_test_msg returns the string "Alright, I'm going to ask you a series of questions, just relax and answer them as simply as you can." before the loop begins.
  describe '#pre_test_msg' do
    it "should start looping through each question" do
      expect(subject.pre_test_msg). to eql("Alright, I'm going to ask you a series of questions, just relax and answer them as simply as you can.")
    end
    it "does not start looping through each question" do
      expect(subject.pre_test_msg). to eql()
  end
# -- checks to see if the method test_loop loops through the array of questions
  describe '#test_loop' do
    it "should return true if the method loops through the array of questions" do
      expect(subject.test_loop).to eql(true) 
    end
    it "should return false if the method doesn't loop through the array" do
      expect(subject).test_loop).to eql(false)
    end
  end
end