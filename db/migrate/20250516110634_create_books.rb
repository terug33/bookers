class CreateBooks < ActiveRecord::Migration[6.1]
  # 「データベースの設計図」＝何を保存するかを決める場所
  def change
    create_table :books do |t|
      t.string:title
      t.string:body
      t.timestamps
    end
  end
end
