class AddCorrectAnswerToTestAnswers < ActiveRecord::Migration
  def change
    add_column :test_answers, :correct_answer, :boolean
  end
end
