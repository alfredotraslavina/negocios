class CreateInvens < ActiveRecord::Migration[5.1]
  def change
    create_table :invens do |t|
      t.string :nombre_objeto
      t.string :marca
      t.string :modelo
      t.decimal :precio ,precision:8 ,scale:2
      t.integer :cantidad
      t.decimal :peso ,precision:8 ,scale:2

      t.timestamps
    end
  end
end
