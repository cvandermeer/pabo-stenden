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
    if @question.save
      redirect_to @question, notice: "Je vraag is ingedient!"
    else
      render "new"
    end
  end

  private

    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:title, :body)
    end
end
