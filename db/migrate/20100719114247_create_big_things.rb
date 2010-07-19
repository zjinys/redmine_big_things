class CreateBigThings < ActiveRecord::Migration
  def self.up
    create_table :big_things do |t|
      t.column :name, :string
      t.column :start_date, :datetime
      t.column :finish_date, :datetime
      t.column :description, :string
      t.column :created_at, :timestamp
      t.column :author_id, :integer
      t.column :status, :integer,:default=>10
      t.column :project_id, :integer
    end
  end

  def self.down
    drop_table :big_things
  end
end
