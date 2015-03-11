class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :title
    	t.text :body
      t.datetime :created_at
    end
  end
end
