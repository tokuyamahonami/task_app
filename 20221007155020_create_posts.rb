class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.datetime :starting_date
      t.datetime :ending_date
      t.boolean :is_all_day
      t.string :title

      t.timestamps
    end
  end
end
