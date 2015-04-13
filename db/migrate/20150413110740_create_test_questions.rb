class CreateTestQuestions < ActiveRecord::Migration
  def change
    create_table :test_questions do |t|
    	t.string :title
    	t.integer :test_id
    	t.text :body
    	t.integer :correct_answer_id
    end
  end
end
