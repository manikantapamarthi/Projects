class CreateProjectLists < ActiveRecord::Migration[5.0]
  def change
    create_table :project_lists do |t|
      t.string :title
      t.date :startdate
      t.date :enddate
      t.date :duration
      t.text :description
      t.string :roles

      t.timestamps
    end
  end
end
