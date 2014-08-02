class CreateBiometrics < ActiveRecord::Migration
  def change
    create_table :biometrics do |t|
      t.float :height
      t.float :weight
      t.integer :user_id

      t.timestamps
    end
    add_index :biometrics, [:user_id, :created_at]
  end
end
