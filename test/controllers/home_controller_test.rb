require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'MyMovies'
    assert_select 'h1#hh1', 'MyMovies'
    assert_select 'p#hp1', 'Welcome to the MyMovies site!'
    assert_select 'p#hp2', 'If you like keeping track of all the movies you have watched and your opinion on the movie then this website is for you. In this website you can write down any movie you see and add a review for it at the same time. This way you can return to this site to check if you have alredy seen a movie and see your thoughts on it through the review you initialy wrote.'
  end

  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'MyMovies'
    assert_select 'h1#ch1', 'Contact Us'
    assert_select 'p#cp1', 'Complete the following form in case you want to get in touch with us.'
  end

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect

    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:{name: "Matthew", email: "matthew@me.com", telephone: "1234567890", message: "Hello"}

    assert_response :redirect

    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
