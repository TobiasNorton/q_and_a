class Api::AnswersController < ApplicationController
  before_action :set_api_answer, only: [:show, :update, :destroy]

  # GET /api/answers
  def index
    @api_answers = Api::Answer.all

    render json: @api_answers
  end

  # GET /api/answers/1
  def show
    render json: @api_answer
  end

  # POST /api/answers
  def create
    @api_answer = Api::Answer.new(api_answer_params)

    if @api_answer.save
      render json: @api_answer, status: :created, location: @api_answer
    else
      render json: @api_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/answers/1
  def update
    if @api_answer.update(api_answer_params)
      render json: @api_answer
    else
      render json: @api_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/answers/1
  def destroy
    @api_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_answer
      @api_answer = Api::Answer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_answer_params
      params.require(:api_answer).permit(:body, :rating, :question_id)
    end
end
