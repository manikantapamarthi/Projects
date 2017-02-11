class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.0]
  def change
  	change_column :project_lists, :duration, :integer
  end
end
