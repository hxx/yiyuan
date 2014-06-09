class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string  :name
      t.string  :gender
      t.string  :id_card
      t.date    :birthdate
      t.integer :age
      t.float   :weight
      t.float   :height
      t.string  :language
      t.string  :native_place
      t.string  :race
      t.string  :education
      t.string  :address
      t.string  :cellphone
      t.string  :email
      t.string  :fixed_phone
      t.string  :wechat_id
      t.string  :emergency_contact_name     
      t.string  :emergency_contact_cellphone     
      t.string  :emergency_contact_wechat_id
      t.text    :note

      t.timestamps
    end
  end
end
