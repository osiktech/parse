class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :firstname
      t.string :lastname
      t.string :streetname
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
