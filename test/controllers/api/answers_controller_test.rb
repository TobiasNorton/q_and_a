require 'test_helper'

class Api::AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_answer = api_answers(:one)
  end

  test "should get index" do
    get api_answers_url, as: :json
    assert_response :success
  end

  test "should create api_answer" do
    assert_difference('Api::Answer.count') do
      post api_answers_url, params: { api_answer: { body: @api_answer.body, question_id: @api_answer.question_id, rating: @api_answer.rating } }, as: :json
    end

    assert_response 201
  end

  test "should show api_answer" do
    get api_answer_url(@api_answer), as: :json
    assert_response :success
  end

  test "should update api_answer" do
    patch api_answer_url(@api_answer), params: { api_answer: { body: @api_answer.body, question_id: @api_answer.question_id, rating: @api_answer.rating } }, as: :json
    assert_response 200
  end

  test "should destroy api_answer" do
    assert_difference('Api::Answer.count', -1) do
      delete api_answer_url(@api_answer), as: :json
    end

    assert_response 204
  end
end
