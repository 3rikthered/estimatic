class AddStartdateToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :startdate, :date
  end
end
