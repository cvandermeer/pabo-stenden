class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :body, limit: 250

      t.timestamps null: false
    end
  end
end
