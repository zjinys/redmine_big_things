class CreateBigThingTasks < ActiveRecord::Migration
  def self.up
    create_table :big_thing_tasks do |t|
      t.column :name, :string
      t.column :start_date, :datetime
      t.column :finish_date, :datetime
      t.column :description, :string
      t.column :status, :integer,:default=>10
      t.column :big_thing_id, :integer
      t.column :responer, :integer
    end
  end

  def self.down
    drop_table :big_thing_tasks
  end
end
