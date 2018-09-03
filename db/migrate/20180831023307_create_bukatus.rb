class CreateBukatus < ActiveRecord::Migration[5.2]
  def change
    create_table :bukatus do |t|
      t.string :name

      t.timestamps
    end
  end
end
