class CreateApplyEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :apply_events do |t|
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
