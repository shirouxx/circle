class AddBukatuIdToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students,:bukatu_id,:integer
    #テーブル名、カラム名、属性
  end
end
