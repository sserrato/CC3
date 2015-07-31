class RemoveColumnsFromSkills < ActiveRecord::Migration
  def change
    remove_column :skills, :finisher_sk, :string
    remove_column :skills, :form_setter_sk, :string
    remove_column :skills, :stone_mason_sk, :string
    remove_column :skills, :brick_mason_sk, :string
    remove_column :skills, :block_mason_sk, :string
  end
end
