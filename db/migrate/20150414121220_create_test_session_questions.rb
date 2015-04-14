class CreateTestSessionQuestions < ActiveRecord::Migration
  def change
    create_table :test_session_questions do |t|
    	t.integer :test_session_id
    	t.integer :test_answer_id
    end
  end
end
