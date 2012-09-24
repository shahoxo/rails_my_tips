class CreateJojolions < ActiveRecord::Migration
  def change
    create_table :jojolions do |t|

      t.timestamps
    end
  end
end
