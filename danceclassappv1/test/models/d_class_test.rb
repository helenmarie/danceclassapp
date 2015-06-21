require 'test_helper'

class DClassTest < ActiveSupport::TestCase

  def setup
    @dclass = DClass.new(dancetype: "Example Type", day: "Example Day", location: "example location")
  end

  test "dancetype should be present" do
    @dclass.dancetype = ""
    assert_not @dclass.valid?
  end

  test "day should be present" do
    @dclass.dancetype = ""
    assert_not @dclass.valid?
  end

  test "location should be present" do
    @dclass.dancetype = ""
    assert_not @dclass.valid?
  end
end

