class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :color, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
