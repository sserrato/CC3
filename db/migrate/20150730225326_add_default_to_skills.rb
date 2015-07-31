class AddDefaultToSkills < ActiveRecord::Migration
  def change
    change_column_default :skills, :sk_block_mason, false
    change_column_default :skills, :sk_brick_mason, false
    change_column_default :skills, :sk_finisher, false
    change_column_default :skills, :sk_form_setter, false
    change_column_default :skills, :sk_stone_mason, false
  end
end
