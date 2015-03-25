class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: [:show]

  def index
    @questions = Question.all
  end

  def show 
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end    

  def create 
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      redirect_to @question, notice: "Je vraag is ingediend!"
    else
      render "new"
    end
  end

  private

    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:title, :body, :user_id)
    end
end
