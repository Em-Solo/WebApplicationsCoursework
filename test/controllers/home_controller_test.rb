require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'MyMovies'
    assert_select 'h1#hh1', 'MyMovies'
    assert_select 'p#hp1', 'Welcome to the MyMovies web application!'
    assert_select 'p#hp2', 'If you are a movie addict and you are intrigued by the idea of having a place where you can note down all the movies you have watched, but also be able to write down any reviews for them, then this is the perfect website for you. This website is made in a way for you to be able to write down any movies you have seen along with some more information on them and also be able to add as many reviews as you want on each movie separetly. This way by doing this you can always come back to this website and have a look at all the information you have written down and you will be able to recall any old thoughts you had on a movie along with any other information you had written down. Not only that  but you will also be able to alter or add to this information.'
    assert_select 'h1#hh2', 'Movies'
    assert_select 'p#hp3', 'By pressing the "Movies" on the task bar, and you log in, the website takes you to the page with all your movies. In this page you can add new movies, edit them, view them to see further details about the movie along with the reviews and lastly you can delete them.'
    assert_select 'h1#hh3', 'Reviews'
    assert_select 'p#hp4', 'By pressing the "Reviews" on the task bar, and you log in, the website takes you to the page with all your Reviews. In this page you can see all the reviews you have made up to this point from all your movies. The only thing you can do in this page is just see your reviews if you wanna edit a review or do anything else with it you can press the "To the Movie" button which will take you to the movie which you added the review to and from there you can act accordingly.'
    assert_select 'h1#hh4', 'Contact Us'
    assert_select 'p#hp5', 'By pressing the "Contact Us" on the task bar, and you log in, the website takes you to the page where you can fill in a form and contact us about any concerns you have.'
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
