class CreateVencimentos < ActiveRecord::Migration
  def change
    create_table :vencimentos do |t|
      t.decimal :valor, precision: 5, scale: 2
      t.integer :dia
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
