class CreateEstacionados < ActiveRecord::Migration[5.1]
  def change
    create_table :estacionados do |t|
      t.string :tipo_veiculo
      t.string :placa
      t.datetime :entrada
      t.datetime :saida
      t.decimal :valor, precision: 10, scale: 2

      t.timestamps
    end
  end
end
