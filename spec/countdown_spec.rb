require 'countdown'

describe Countdown do
  describe ".give_us_expression_for" do
    it "shoulud take an array of numbers" do
      sample_set = [100, 5, 5, 2, 6, 8]
      expect(subject.give_us_expression_for(sample_set)).to eq("(5 * 100) + ((5 + 6) * 2)")
    end
  end

  describe "mark_as_used" do
    it "works" do
      new_countdown = Countdown.new([100, 5, 5, 2, 6, 8])
      # @set_of_numbers = [100, 5, 5, 2, 6, 8]
      new_countdown.mark_as_used([0,1])
      expect(@set_of_numbers).to eq([5, 2, 6, 8])
    end
  end

end