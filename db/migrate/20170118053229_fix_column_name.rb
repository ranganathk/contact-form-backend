class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :messages, :message, :description
  end
end
