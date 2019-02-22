class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.serial :idFamily
      t.text :family

      t.timestamps
    end
  end
end
