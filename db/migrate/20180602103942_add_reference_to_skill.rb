class AddReferenceToSkill < ActiveRecord::Migration[5.2]
  def change
    add_reference :skills, :user
  end
end
