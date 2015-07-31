class CreateJoinTableJobSkill < ActiveRecord::Migration
  def change
    create_join_table :jobs, :skills do |t|
      # t.index [:job_id, :skill_id]
      # t.index [:skill_id, :job_id]
    end
  end
end
