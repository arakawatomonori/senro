class CreateMilestones < ActiveRecord::Migration[6.0]
  def change
    create_table :milestones do |t|
      t.string :name
      t.integer :distance
      t.string :photo_url

      t.timestamps
    end
  end
end
