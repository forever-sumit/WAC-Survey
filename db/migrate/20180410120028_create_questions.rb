class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :in_order
      t.string :question_title
      t.integer :section_id
      t.timestamps
    end
  end
end
