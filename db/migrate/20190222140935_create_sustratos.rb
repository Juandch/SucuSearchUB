class CreateSustratos < ActiveRecord::Migration[5.2]
  def change
    create_table :sustratos do |t|
      t.serial :idSustrato
      t.text :sustrato

      t.timestamps
    end
  end
end
