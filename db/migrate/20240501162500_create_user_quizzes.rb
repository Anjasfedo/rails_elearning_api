class CreateUserQuizzes < ActiveRecord::Migration[7.1]
  def change
    create_table :user_quizzes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quiz_question, null: false, foreign_key: true
      t.boolean :is_correct, default: false

      t.timestamps
    end
  end
end
