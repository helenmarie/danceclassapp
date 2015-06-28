class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :d_classes, :dancetype, :dancetype
  end
end
