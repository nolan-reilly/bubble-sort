require_relative "../bubble_sort"

RSpec.describe "bubble_sort" do
  it "Sorts a small array" do
    expect(bubble_sort([4, 3, 2, 1])).to eq([1, 2, 3, 4])
  end

  it "Sorts an already sorted list" do
    expect(bubble_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

  it "Sorts a jumbled array with a variety of numbers" do
    expect(bubble_sort([56, 21, 98, 2, 88, 1002, 9, 32])).to eq([2, 9, 21, 32, 56, 88, 98, 1002])
  end

  it "Sorts an empty list properly" do
    expect(bubble_sort([])).to eq([])
  end

  it "Sorts a list of one element properly" do
    expect(bubble_sort([100])).to eq([100])
  end

  it "Sorts a list of negative numbers properly" do
    expect(bubble_sort([-1, -18, -12, -6])).to eq([-18, -12, -6, -1])
  end

  it "Sorts a list of negative and positive numbers properly" do
    expect(bubble_sort([22, -13, 8, 2, 55, -22, -1])).to eq([-22, -13, -1, 2, 8, 22, 55])
  end
end