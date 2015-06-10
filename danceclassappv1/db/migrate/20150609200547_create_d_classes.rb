class CreateDClasses < ActiveRecord::Migration
  def change
    create_table :d_classes do |t|
      t.string :type
      t.string :day
      t.string :location

      t.timestamps null: false
    end
  end
end
