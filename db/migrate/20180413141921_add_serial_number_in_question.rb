class AddSerialNumberInQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :serial_number, :float
  end
end
