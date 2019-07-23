class ChangeTeamToBeStringInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :team, :string
  end
end
