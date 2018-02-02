class AddDetailstoEvents < ActiveRecord::Migration[5.1]
  def change
    change_table :events do |t|
      t.remove :event
      t.string :event_name, :category, :type, :website
      t.text :description
      t.integer :number_of_participants
    end
  end
end
