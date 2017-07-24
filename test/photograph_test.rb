require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test

  def setup
    @photo = Photograph.new({name: "Random Photograph", artist_id: 4, museum_id: 2, year: 2017})
  end

  def test_photograph_exists
    assert_instance_of @photo, Photograph
  end

  def test_photograph_has_name
    assert_equal "Random Photo", @photo.name
  end

  def test_photograph_has_incrementing_id
    assert_equal 1, @photo.id
    @next_photo = Photograph.new({name: "Random Photograph", artist_id: 4, museum_id: 2, year: 2017})
    assert_equal 2, @next_photo.id
  end

  def test_photograph_has_artist_id
    assert_equal 4, @photo.artist_id
  end

  def test_photograph_has_museum_id
    assert_equal 2, @photo.museum_id
  end

  def test_photograph_has_year
    assert_equal 2017, @photo.museum_id
  end


end
