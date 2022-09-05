class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.integer :credits
      t.integer :par
      t.string :aula
      t.string :mode
      t.string :campus
      t.string :class_schedule
      t.string :exam_schedule
      t.string :professor
      t.integer :max_capacity
      t.integer :current_capacity

      t.timestamps
    end
    add_index :courses, :code, unique: true
  end
end
