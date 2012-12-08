class CreateMicroposrs < ActiveRecord::Migration
  def change
    create_table :microposrs do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
