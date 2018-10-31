class AddQandaToSurvey < ActiveRecord::Migration[5.1]
  def change
    add_column :surveys, :qanda, :jsonb, default: {}
  end
end
