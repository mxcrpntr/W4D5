require "tdd"
require "rspec"

describe "#my_uniq" do
  it "deletes repeated instances of eles in an array" do
    arr = [1,2,1,3,3]
    expect(my_uniq(arr)).to eq([1,2,3])
  end
end

describe "Array#two_sum" do
  it "finds all positions pairs that sum to zero" do
    arr = [-1,0,2,-2,1]
    expect(arr.two_sum).to eq([[0,4],[2,3]])
  end
end

describe "#my_transpose" do
  it "converts row indices to column indices and vice versa" do
    rows = [
    [0,1,2],
    [3,4,5],
    [6,7,8]
    ]
    cols = [
    [0,3,6],
    [1,4,7],
    [2,5,8]
    ]
    expect(my_transpose(rows)).to eq(cols)
  end
end

describe "#stock_picker" do
  it "takes an array of stock prices and outputs the most profitable pair
  of days (represented by index) when to buy and sell" do
    arr = [2,3,4,5,30,1,45,19,40,100,20,4]
    expect(stock_picker(arr)).to eq([5,9])  
  end
end
