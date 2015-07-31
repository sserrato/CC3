class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :finisher_sk
      t.string :form_setter_sk
      t.string :stone_mason_sk
      t.string :brick_mason_sk
      t.string :block_mason_sk

      t.timestamps null: false
    end
  end
end
