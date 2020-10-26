class CreateRequesters < ActiveRecord::Migration[6.0]
  def change
    create_table :requesters do |t|
      t.string :company_name
      t.integer :cnpj
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
