class CreateTestAnswers < ActiveRecord::Migration
  def change
    create_table :test_answers do |t|
    	t.string :value
    	t.integer :test_question_id
    end
  end
end
