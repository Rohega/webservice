class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens, id: false  do |t|
      t.string :id
      t.string :name
      t.string :bin
      t.string :exp_month
      t.string :exp_year
      t.string :brand
      t.string :last4

      t.timestamps null: false
    end
    add_index(:tokens, :id)
  end
end
