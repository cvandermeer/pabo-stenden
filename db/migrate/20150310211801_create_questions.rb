class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, limit: 50
      t.string :body, limit: 250

      t.timestamps null: false
    end
  end
end
