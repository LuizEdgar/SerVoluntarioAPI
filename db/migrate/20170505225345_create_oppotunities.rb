class CreateOppotunities < ActiveRecord::Migration[5.0]
  def change
    create_table :oppotunities do |t|
      t.string :title
      t.boolean :is_ongoing
      t.boolean :is_virtual
      t.integer :volunteers_number
      t.date :start_date_at
      t.date :end_date_at
      t.time :start_time_at
      t.time :end_time_at
      t.text :description
      t.string :time_commitment
      t.string :other_requirements
      t.string :tags
      t.references :opportunitable, polymorphic: true

      t.timestamps
    end
  end
end