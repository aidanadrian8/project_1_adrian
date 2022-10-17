require "test_helper"

class DogShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_show = dog_shows(:one)
  end

  test "should get index" do
    get dog_shows_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_show_url
    assert_response :success
  end

  test "should create dog_show" do
    assert_difference("DogShow.count") do
      post dog_shows_url, params: { dog_show: { end_time: @dog_show.end_time, name: @dog_show.name, start_time: @dog_show.start_time } }
    end

    assert_redirected_to dog_show_url(DogShow.last)
  end

  test "should show dog_show" do
    get dog_show_url(@dog_show)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_show_url(@dog_show)
    assert_response :success
  end

  test "should update dog_show" do
    patch dog_show_url(@dog_show), params: { dog_show: { end_time: @dog_show.end_time, name: @dog_show.name, start_time: @dog_show.start_time } }
    assert_redirected_to dog_show_url(@dog_show)
  end

  test "should destroy dog_show" do
    assert_difference("DogShow.count", -1) do
      delete dog_show_url(@dog_show)
    end

    assert_redirected_to dog_shows_url
  end
end
