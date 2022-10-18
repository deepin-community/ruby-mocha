require 'test/unit'
require 'mocha'

class MochaDebianTest < Test::Unit::TestCase

  def test_should_create_mock_objects
    obj = mock
    obj.expects(:something).returns("something")
    assert_equal "something", obj.something
  end

  def test_should_mock_real_objects
    obj = Object.new
    obj.expects(:data).returns(:x => 7, :y => 9)
    assert_equal({ :x => 7, :y => 9}, obj.data)
  end

end
