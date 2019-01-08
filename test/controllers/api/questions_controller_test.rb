require 'test_helper'

class Api::QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_question = api_questions(:one)
  end

  test "should get index" do
    get api_questions_url, as: :json
    assert_response :success
  end

  test "should create api_question" do
    assert_difference('Api::Question.count') do
      post api_questions_url, params: { api_question: { body: @api_question.body, header: @api_question.header, rating: @api_question.rating } }, as: :json
    end

    assert_response 201
  end

  test "should show api_question" do
    get api_question_url(@api_question), as: :json
    assert_response :success
  end

  test "should update api_question" do
    patch api_question_url(@api_question), params: { api_question: { body: @api_question.body, header: @api_question.header, rating: @api_question.rating } }, as: :json
    assert_response 200
  end

  test "should destroy api_question" do
    assert_difference('Api::Question.count', -1) do
      delete api_question_url(@api_question), as: :json
    end

    assert_response 204
  end
end
