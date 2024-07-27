class CreateCotizations < ActiveRecord::Migration[7.1]
  def change
    create_table :cotizations do |t|
      t.decimal :value, precision: 10, scale: 2
      t.references :economic_variable, null: false, foreign_key: true
      t.timestamps
    end

    remove_column :cotizations, :updated_at
  end
end
