class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :username
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
