class AddNewFieldsToRecipe < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :prepare_mode, :text
    add_column :recipes, :cost, :Decimal
  end
end
