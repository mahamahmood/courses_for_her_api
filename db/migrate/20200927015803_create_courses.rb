class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :img
      t.string :what_will_you_learn
      t.string :main_content
      t.string :main_video
      t.string :practice

      t.timestamps
    end
  end
end
