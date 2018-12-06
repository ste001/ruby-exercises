require './my_enumerable'

describe Enumerable do
  describe "#my_select" do
    it "return all the even numbers in an array" do
      expect([1,2,3,4,5].my_select{ |num|  num.even?  }).to eq([2,4])
    end
  end
  describe "#my_count" do
    it "return 0 when the array has zero elements" do
      expect([].my_count).to eq(0)
    end
    it "works with various elements" do
      expect([1, "10", [5, 4], 4].my_count).to eq(4)
    end
    it "works with a block" do
      expect([2,4,7,10,14,3].my_count{|x| x%2==0}).to eq(4)
    end
  end
  describe "#my_map" do
    it "return an different array when a block is passed" do
      expect([4,9,5,3].my_map{|x| x*2}).to eq([8,18,10,6])
    end
    it "return nil when the block doesn't match anything" do
      expect([1,2,3,4,5].my_map{|x| x*2 if x > 10}).to \
      eq([nil, nil, nil, nil, nil])
    end
  end
  describe "#my_all" do
    it "return true when there are no elements" do
      expect([].my_all?{|word| word.length > 0}).to eq(true)
    end
    it "return false when nil is in the array" do
      expect(["ess", nil, "wee", "two"].my_all?\
        {|word| word.instance_of?(String)}).to eq(false)
    end
  end
end