class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.integer :member_id
      t.text :answer_text
      t.boolean :accepted_answer

      t.timestamps null: false
    end
  end
end
