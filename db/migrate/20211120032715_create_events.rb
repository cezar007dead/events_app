class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :adress
      t.references :user
      t.timestamps
    end
  end
end
