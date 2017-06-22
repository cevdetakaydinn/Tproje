class CreateExtraSpecs < ActiveRecord::Migration[5.0]
  def change
    create_table :extra_specs do |t|
      t.string :speciality

      t.timestamps
    end
  end
end
