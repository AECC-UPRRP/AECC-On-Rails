require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@tester = Item.new(name:"AECC shirt small", itype: "Shirt", stock: 5)
  end
  test "Should be valid" do
  	assert @tester.valid?
  end

  test "Must validate name" do
   @tester.name = "   "
   assert_not @tester.valid? 
  end

  test "Must validate item type" do
  	@tester.name = "AECC shirt small"
  	@tester.itype = "   "
  	assert_not @tester.valid?
  end

  test "Must validate Shirt" do
  	@tester.itype = "Shirt"
  	@tester.stock = nil
  	assert_not @tester.valid? 
  end
end
