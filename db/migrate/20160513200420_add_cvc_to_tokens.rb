class AddCvcToTokens < ActiveRecord::Migration
  def change
    add_column :tokens, :cvc, :string
  end
end
