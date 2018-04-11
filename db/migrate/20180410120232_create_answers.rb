class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :answer_title
      t.float :answer_score
      t.timestamps
    end
  end
end
