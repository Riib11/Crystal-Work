require "spec"

describe Array do
  describe "#size" do
    it "reports the number of elements in the Array" do
      [1, 2, 3].size.should eq 3
    end
  end

  describe "#empty?" do
    pending "is true when no elements are in the array" do
      ([] of Int32).empty?.should be_false
    end
  end
end
