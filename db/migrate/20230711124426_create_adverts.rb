class CreateAdverts < ActiveRecord::Migration[7.0]
  def change
    create_table :adverts, id: :uuid do |t|
      t.string :type_of_advert
      t.string :header_advert
      t.string :mobile_image
      t.string :desk_image
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
