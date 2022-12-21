require_relative '../lib/test'

describe "addition function" do
    it "must addition" do
      expect(addition(1,1)).to eq(1+1)
    end
    it "must addition" do
        expect(addition(0.9768,0.9)).to eq(0.9768+0.9)
      end
  end