class RemoveFirstNameFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :firstName
  end
end
