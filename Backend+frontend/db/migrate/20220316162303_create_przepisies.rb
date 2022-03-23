class CreatePrzepisies < ActiveRecord::Migration[7.0]
  def change
    create_table :przepisies do |t|
      t.string :nazwa
      t.text :opis
      t.integer :stopien_trudnosci
      t.string :czas_przygotowania
      t.float :ocena_uzytkownikow
      t.string :kategoria

      t.timestamps
    end
  end
end
