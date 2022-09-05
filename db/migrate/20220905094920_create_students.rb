class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :user
      t.string :email
      t.string :name
      t.integer :credits
      t.string :passwrd
      t.string :class_schedule
      t.string :exam_schedule

      t.timestamps
    end
    add_index :students, :user, unique: true
    add_index :students, :email, unique: true
  end
end
