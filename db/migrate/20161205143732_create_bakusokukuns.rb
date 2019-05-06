class CreateBakusokukuns < ActiveRecord::Migration
  def change
    create_table :bakusokukuns do |t|
      t.datetime :Time_JST
      t.integer :Num_of_Pages

      t.timestamps null: false
    end
  end
end
