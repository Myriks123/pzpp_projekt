class DodajOpis < ActiveRecord::Migration[7.0]
  def change
    change_table :przepisies do |t|
     t.text :opis
    end
  end
end
