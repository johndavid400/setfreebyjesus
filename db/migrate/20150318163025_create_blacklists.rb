class CreateBlacklists < ActiveRecord::Migration
  def change
    create_table :blacklists do |t|
      t.string :email

      t.timestamps
    end
  end
end
