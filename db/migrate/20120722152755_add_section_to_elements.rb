class AddSectionToElements < ActiveRecord::Migration
  def change
    add_column :elements, :section, :string
  end
end
