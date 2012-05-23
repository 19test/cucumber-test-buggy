require 'test_helper'

class StrawberryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Strawberry.new.valid?
  end
end
