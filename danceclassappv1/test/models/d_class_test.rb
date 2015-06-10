=begin

require 'test_helper'

class DClassTest < ActiveSupport::TestCase

  def setup
    @dclass = DClass.new(type: “example type”, day: “example day”, location: “example location”)
  end

  test “type should be present” do
    @dclass.type = “”
    assert_not @user.valid?
  end

end

=end

