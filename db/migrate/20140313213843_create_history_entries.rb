class CreateHistoryEntries < ActiveRecord::Migration[4.2]
  def change
    create_table :history_entries do |t|
      t.references :user, index: true
      t.references :league, index: true
      t.references :match, index: true
      t.integer :quote
      t.integer :rank
      t.timestamps
    end
  end
end
