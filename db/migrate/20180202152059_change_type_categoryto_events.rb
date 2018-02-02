class ChangeTypeCategorytoEvents < ActiveRecord::Migration[5.1]
  def change
    change_table :events do |t|
      t.remove :event_type, :event_category
      t.integer :event_type, :event_category
    end
  end
end
