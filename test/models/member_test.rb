require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@tester = Member.new(fname:"Jonathan Medina", email:"example@example.com",active: false)
  end

  test "Should be valid" do
  	assert @tester.valid?
  end

  test "Must validate email" do
  	@tester.fname = "Jonathan Medina"
  	@tester.active = false
  	@tester.email = "   "
  	assert_not @tester.valid?
  end

  test "Must validate name" do

  	@tester.fname = "   "
  	@tester.active = false
  	@tester.email = "example@example.com"
  	assert_not @tester.valid?
  end

end
