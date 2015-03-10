class QuestionsController < ApplicationController
  
  layout 'application'

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create 
    @question = Question.new(question_params);
    if @question.save
      redirect_to('/questions')
    else
      render('questions/new')
    end
  end

  private

    def question_params
      params.require(:question).permit(:title, :body)
    end

end
