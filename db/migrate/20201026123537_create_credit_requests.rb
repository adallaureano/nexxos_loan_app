class CreateCreditRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_requests do |t|
      t.money :value
      t.references :requester, null: false, foreign_key: true

      t.timestamps
    end
  end
end
