class CreateOrgans < ActiveRecord::Migration[5.2]
  def change
    create_table :organs do |t|
      t.serial :idOrgan
      t.text :organ

      t.timestamps
    end
  end
end
