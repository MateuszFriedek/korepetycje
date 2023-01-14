require "test_helper"

class TutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutor = tutors(:one)
  end

  test "should get index" do
    get tutors_url
    assert_response :success
  end

  test "should get new" do
    get new_tutor_url
    assert_response :success
  end

  test "should create tutor" do
    assert_difference("Tutor.count") do
      post tutors_url, params: { tutor: { degree: @tutor.degree, description: @tutor.description, email: @tutor.email, id: @tutor.id, location: @tutor.location, login_id: @tutor.login_id, phone_number: @tutor.phone_number, start_date: @tutor.start_date, subject: @tutor.subject } }
    end

    assert_redirected_to tutor_url(Tutor.last)
  end

  test "should show tutor" do
    get tutor_url(@tutor)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutor_url(@tutor)
    assert_response :success
  end

  test "should update tutor" do
    patch tutor_url(@tutor), params: { tutor: { degree: @tutor.degree, description: @tutor.description, email: @tutor.email, id: @tutor.id, location: @tutor.location, login_id: @tutor.login_id, phone_number: @tutor.phone_number, start_date: @tutor.start_date, subject: @tutor.subject } }
    assert_redirected_to tutor_url(@tutor)
  end

  test "should destroy tutor" do
    assert_difference("Tutor.count", -1) do
      delete tutor_url(@tutor)
    end

    assert_redirected_to tutors_url
  end
end
