class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.references :user,       null: false, foreign_key: true
      t.string :name,           null: false
      t.text   :recommendation, null: false
      t.text   :explanation,    null: false
      t.integer :category_id,   null: false
      t.timestamps
    end
  end
end
