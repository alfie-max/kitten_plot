require 'test_helper'
require 'minitest/spec'
require "minitest/unit"
require "mocha/minitest"
require "minitest/autorun"
require 'aruba/cucumber'
require 'aruba/rspec'

class DefaultTest < Minitest::Test

  def setup
    @csv = CSV.new
  end

  def teardown
    print 'teardown'
  end

  def test_the_truth
    assert_equal('', @csv)
    # assert true
  end
end
