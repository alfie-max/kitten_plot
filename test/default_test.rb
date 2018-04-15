require 'test_helper'
require 'aruba/cucumber'
# require 'aruba/rspec'
# require 'rspec/expectations'

class DefaultTest < Test::Unit::TestCase

  describe '#get_coordinates' do


    it 'throws an error if arg is not a directory' do
      #assert "ERROR: Arg must be a directory"
    end

    it 'throws an error if a file does not exist' do
      #assert "ERROR: #{image_file} is not a valid file"
    end

    it 'generates a csv' do

      # assert headers are Latitude and Longitude
      # assert values are either a float or nil
    end
  end

  # def setup
  #
  # end
  #
  # def teardown
  #
  # end
  #
  # def test_the_truth
  #
  #   assert true
  # end
end
