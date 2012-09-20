class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.string :depth_key
      t.string :width_key
      t.integer :summary_count

      t.timestamps
    end
  end
end
