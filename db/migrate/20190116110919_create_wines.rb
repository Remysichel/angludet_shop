class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :sku
      t.string :photo_url

      t.timestamps
    end
  end
end
