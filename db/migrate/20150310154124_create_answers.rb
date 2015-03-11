class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
			t.text :body
      t.integer :question_id
    end
  end
end
