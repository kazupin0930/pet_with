class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string     :pet_name, null: false
      t.string     :type, null: false
      t.integer    :personality_id, null: false
      t.integer    :age_id, null: false
      t.integer    :sex_id, null: false
      t.integer    :weight
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
