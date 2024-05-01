class CreateAssessments < ActiveRecord::Migration[7.1]
  def change
    create_table :assessments do |t|
      t.references :course, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.text :task

      t.timestamps
    end
  end
end
