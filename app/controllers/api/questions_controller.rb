class Api::QuestionsController < ApplicationController
  before_action :set_api_question, only: [:show, :update, :destroy]

  # GET /api/questions
  def index
    @api_questions = Api::Question.all

    render json: @api_questions
  end

  # GET /api/questions/1
  def show
    render json: @api_question
  end

  # POST /api/questions
  def create
    @api_question = Api::Question.new(api_question_params)

    if @api_question.save
      render json: @api_question, status: :created, location: @api_question
    else
      render json: @api_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/questions/1
  def update
    if @api_question.update(api_question_params)
      render json: @api_question
    else
      render json: @api_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/questions/1
  def destroy
    @api_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_question
      @api_question = Api::Question.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_question_params
      params.require(:api_question).permit(:header, :body, :rating)
    end
end
