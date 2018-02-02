class ChangeDetailstoEvents < ActiveRecord::Migration[5.1]
  def change
    change_table :events do |t|
      t.remove :type, :category
      t.string :event_type, :event_category
    end
  end
end
