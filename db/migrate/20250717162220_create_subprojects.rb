class CreateSubprojects < ActiveRecord::Migration[8.0]
  def change
    create_table :subprojects do |t|
      t.string :subproject_name
      t.references :project, null: false, foreign_key: true

      # client references
      t.bigint :client_id, null: false
      t.bigint :owner_id, null: false
      t.bigint :builder_id, null: false

      t.timestamps
    end

    add_foreign_key :subprojects, :clients, column: :client_id
    add_foreign_key :subprojects, :clients, column: :owner_id
    add_foreign_key :subprojects, :clients, column: :builder_id
    add_index :subprojects, :client_id
    add_index :subprojects, :owner_id
    add_index :subprojects, :builder_id
  end
end