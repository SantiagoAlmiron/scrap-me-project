class CreateEconomicVariables < ActiveRecord::Migration[7.1]
  def change
    create_table :economic_variables do |t|
      t.string :name
      t.text :description
      t.string :font_link
      t.string :type

      t.timestamps
    end
  end
end
