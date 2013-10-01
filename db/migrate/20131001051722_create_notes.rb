class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text   :description
      t.integer :order_id

      t.timestamps
    end
  end
end
