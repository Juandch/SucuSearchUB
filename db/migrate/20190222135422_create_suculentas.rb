class CreateSuculentas < ActiveRecord::Migration[5.2]
  def change
    create_table :suculentas do |t|
      t.serial :idSuculent
      t.text :name
      t.integer :idOrgan
      t.integer :idFamily
      t.integer :idSustrato
      t.text :temp
      t.text :image

      t.timestamps
    end
  end
end
