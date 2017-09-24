class CreateFors < ActiveRecord::Migration[5.0]
  def change
    create_table :fors do |t|
      t.references :post, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
