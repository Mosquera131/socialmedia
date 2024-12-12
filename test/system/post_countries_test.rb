require "application_system_test_case"

class PostCountriesTest < ApplicationSystemTestCase
  setup do
    @post_country = post_countries(:one)
  end

  test "visiting the index" do
    visit post_countries_url
    assert_selector "h1", text: "Post countries"
  end

  test "should create post country" do
    visit post_countries_url
    click_on "New post country"

    fill_in "Comment", with: @post_country.comment
    fill_in "Country name", with: @post_country.country_name
    fill_in "Date of arrival", with: @post_country.date_of_arrival
    fill_in "Date of departure", with: @post_country.date_of_departure
    fill_in "Favorite excursion", with: @post_country.favorite_excursion
    fill_in "Favorite food", with: @post_country.favorite_food
    click_on "Create Post country"

    assert_text "Post country was successfully created"
    click_on "Back"
  end

  test "should update Post country" do
    visit post_country_url(@post_country)
    click_on "Edit this post country", match: :first

    fill_in "Comment", with: @post_country.comment
    fill_in "Country name", with: @post_country.country_name
    fill_in "Date of arrival", with: @post_country.date_of_arrival
    fill_in "Date of departure", with: @post_country.date_of_departure
    fill_in "Favorite excursion", with: @post_country.favorite_excursion
    fill_in "Favorite food", with: @post_country.favorite_food
    click_on "Update Post country"

    assert_text "Post country was successfully updated"
    click_on "Back"
  end

  test "should destroy Post country" do
    visit post_country_url(@post_country)
    click_on "Destroy this post country", match: :first

    assert_text "Post country was successfully destroyed"
  end
end
