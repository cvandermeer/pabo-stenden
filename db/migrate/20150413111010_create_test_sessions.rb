class CreateTestSessions < ActiveRecord::Migration
  def change
    create_table :test_sessions do |t|
    	t.integer :user_id
    	t.integer :test_id
    	t.integer :result
    	t.timestamps
    end
  end
end
