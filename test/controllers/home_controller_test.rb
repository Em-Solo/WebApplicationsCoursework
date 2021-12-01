require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'MyMovies'
    assert_select 'h1', 'MyMovies'
    assert_select 'p#p1', 'Welcome to the MyMovies site!'
    assert_select 'p#p2', 'If you like keeping track of all the movies you have watched and your opinion on the movie then this website is for you. In this website you can write down any movie you see and add a review for it at the same time. This way you can return to this site to check if you have alredy seen a movie and see your thoughts on it through the review you initialy wrote.'
  end

end
