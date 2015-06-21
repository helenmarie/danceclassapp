class Changecolumnname < ActiveRecord::Migration
  def change
  	rename_column :d_classes, :type, :dancetype
  end
end
