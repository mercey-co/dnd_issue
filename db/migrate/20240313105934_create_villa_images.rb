class CreateVillaImages < ActiveRecord::Migration[7.1]
  def change
    create_table :villa_images do |t|
      t.string :title
      t.integer :position

      t.timestamps
      t.belongs_to :villa
    end
  end
end
