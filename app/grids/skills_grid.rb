class SkillsGrid < BaseGrid

  scope do
    Skill
  end

  filter(:id, :integer)
  filter(:created_at, :date, :range => true)

  column(:id)
  column(:name)
  column(:active, :header => "Activated") do |skill|
    !skill.user.disabled
  end
  date_column(:created_at)
end
