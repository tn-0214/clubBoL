class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :name,                    null:false
      t.integer    :gender_id,               null:false
      t.integer    :category_id,             null:false
      t.text       :comment,                 null:false
      t.text       :precaution,              null:false
      t.integer    :lending_period_id,       null:false
      t.date       :due_date #貸し出し最終日は任意入力にする
      t.integer    :receiving_prefecture_id, null:false 
      t.string     :receiving_address #地域も任意入力にする
      t.integer    :weekly_price,            null:false
      t.references :user,                    foreign_key: true
      t.timestamps
    end
  end
end
