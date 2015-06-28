class Changecolumnname < ActiveRecord::Migration
  def change
  	rename_column :d_class, :type, :dancetype
  end
end
