class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :job_start
      t.datetime :job_end
      t.string :loc_street
      t.string :loc_city
      t.integer :loc_zip
      t.string :loc_state
      t.timestamps null: false

    end
  end
end
