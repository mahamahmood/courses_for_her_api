class AddForeignKeyToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :instructor_id, :integer
    add_column :courses, :category_id, :integer
  end
end
