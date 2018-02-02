class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|

      t.string :event_name, :website
      t.text :description
      t.integer :number_of_participants, :event_type, :event_category

      t.timestamps
    end
  end
end
