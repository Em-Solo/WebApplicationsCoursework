require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  test 'should not save empty movie' do
    movie = Movie.new

    movie.save
    refute movie.valid?
  end

  test 'should save valid note' do
    movie = Movie.new

    movie.title = 'Home Alone'
    movie.genre = 'Family'
    movie.runtime = 100
    movie.watch_date = '03/12/2021'
    movie.score = 66

    movie.save
    assert movie.valid?
  end

  test 'should not save duplicate movie title' do
    movie1 = Movie.new
    movie1.title = 'Clueless'
    movie1.genre = 'Romance'
    movie1.runtime = 80
    movie1.watch_date = '02/12/2021'
    movie1.score = 85
    movie1.save
    assert movie1.valid?

    movie2 = Movie.new
    movie2.title = 'Clueless'
    movie2.genre = 'Romance'
    movie2.runtime = 80
    movie2.watch_date = '02/12/2021'
    movie2.score = 85
    movie2.save
    refute movie2.valid?
  end

end
