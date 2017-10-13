class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :Birthday
      t.string :Surname

      t.timestamps
    end
  end
end
