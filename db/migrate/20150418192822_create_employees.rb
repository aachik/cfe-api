class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name, :position, :speciality, :rpe, :email
      t.references :manager, index: true

      t.references :colleague, index: true

      t.timestamps null: false
    end
  end
end
