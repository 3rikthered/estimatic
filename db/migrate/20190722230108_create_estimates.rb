class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.integer :case_best
      t.integer :case_worst
      t.integer :case_expected

      t.timestamps
    end
  end
end
