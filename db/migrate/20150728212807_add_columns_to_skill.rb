class AddColumnsToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :sk_block_mason, :boolean
    add_column :skills, :sk_brick_mason, :boolean
    add_column :skills, :sk_finisher, :boolean
    add_column :skills, :sk_form_setter, :boolean
    add_column :skills, :sk_stone_mason, :boolean
  end
end
