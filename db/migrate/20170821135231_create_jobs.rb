class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :wage_upper_bound
      t.integer :wage_lower_bound
      t.string :city
      t.string :company
      t.string :contact_email
      t.boolean :is_hidden
      t.timestamps
    end
  end
end
