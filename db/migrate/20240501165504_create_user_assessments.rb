class CreateUserAssessments < ActiveRecord::Migration[7.1]
  def change
    create_table :user_assessments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :assessment, null: false, foreign_key: true
      t.text :responses
      t.boolean :is_accepted, default: false

      t.timestamps
    end
  end
end
