require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  setup do
    @movie = movies(:one)
  end

  test 'should not save empty review' do
    review = Review.new

    review.save
    refute review.valid?
  end

  test 'should save valid review' do
    review = Review.new

    review.content = 'This was a good movie'
    review.movie = @movie

    review.save
    assert review.valid?
  end

end
