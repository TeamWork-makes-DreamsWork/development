class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :question_id
      t.integer :answer_id
      t.integer :member_id
      t.boolean :vote

      t.timestamps null: false
    end
  end
end
