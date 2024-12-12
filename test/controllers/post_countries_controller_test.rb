require "test_helper"

class PostCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_country = post_countries(:one)
  end

  test "should get index" do
    get post_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_post_country_url
    assert_response :success
  end

  test "should create post_country" do
    assert_difference("PostCountry.count") do
      post post_countries_url, params: { post_country: { comment: @post_country.comment, country_name: @post_country.country_name, date_of_arrival: @post_country.date_of_arrival, date_of_departure: @post_country.date_of_departure, favorite_excursion: @post_country.favorite_excursion, favorite_food: @post_country.favorite_food } }
    end

    assert_redirected_to post_country_url(PostCountry.last)
  end

  test "should show post_country" do
    get post_country_url(@post_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_country_url(@post_country)
    assert_response :success
  end

  test "should update post_country" do
    patch post_country_url(@post_country), params: { post_country: { comment: @post_country.comment, country_name: @post_country.country_name, date_of_arrival: @post_country.date_of_arrival, date_of_departure: @post_country.date_of_departure, favorite_excursion: @post_country.favorite_excursion, favorite_food: @post_country.favorite_food } }
    assert_redirected_to post_country_url(@post_country)
  end

  test "should destroy post_country" do
    assert_difference("PostCountry.count", -1) do
      delete post_country_url(@post_country)
    end

    assert_redirected_to post_countries_url
  end
end
