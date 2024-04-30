class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :category
      t.date :creation_date
      t.string :status

      t.timestamps
    end
  end
end
