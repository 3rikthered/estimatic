class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.integer :worst
      t.integer :best
      t.integer :expected

      t.timestamps
    end
  end
end
