class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to questions_path, notice => "question added"
    else
      render "index"
    end
  end

  def question_params
    params.require(:question).permit(:title, :body)
  end

end