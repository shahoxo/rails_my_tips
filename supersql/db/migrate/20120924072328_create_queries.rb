class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :sql_text
      t.string :ruby_text
      t.timestamps
    end
  end
end
