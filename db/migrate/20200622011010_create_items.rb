class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :list_id
      # wiring the schema with foriegn id
      # wite the model with association

      t.timestamps null: false
    end
  end
end
