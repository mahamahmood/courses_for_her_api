require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url, as: :json
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { description: @course.description, img: @course.img, main_content: @course.main_content, main_video: @course.main_video, practice: @course.practice, title: @course.title, what_will_you_learn: @course.what_will_you_learn } }, as: :json
    end

    assert_response 201
  end

  test "should show course" do
    get course_url(@course), as: :json
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { description: @course.description, img: @course.img, main_content: @course.main_content, main_video: @course.main_video, practice: @course.practice, title: @course.title, what_will_you_learn: @course.what_will_you_learn } }, as: :json
    assert_response 200
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course), as: :json
    end

    assert_response 204
  end
end
