class CreateProfessors < ActiveRecord::Migration[7.0]
  def change
    create_table :professors do |t|
      t.string :user
      t.string :email
      t.string :name
      t.decimal :rank
      t.string :passwd
      t.string :courses

      t.timestamps
    end
    add_index :professors, :user, unique: true
    add_index :professors, :email, unique: true
  end
end
