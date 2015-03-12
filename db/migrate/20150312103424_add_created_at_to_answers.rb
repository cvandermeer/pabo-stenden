class AddCreatedAtToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :created_at, :datetime
  end
end
