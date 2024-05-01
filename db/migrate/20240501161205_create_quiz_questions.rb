class CreateQuizQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.text :question_text
      t.string :correct_answer
      t.string :wrong_answer1
      t.string :wrong_answer2
      t.string :wrong_answer3

      t.timestamps
    end
  end
end
