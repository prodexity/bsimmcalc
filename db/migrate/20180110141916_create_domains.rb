class CreateDomains < ActiveRecord::Migration[5.1]
  def change
    create_table :domains do |t|
      t.string :title, null: false
      t.string :descr, null: false

      t.integer :version, null: false
      t.timestamps
    end
  end
end
