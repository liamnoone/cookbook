Hanami::Model.migration do
  change do
    create_table :recipies do
    primary_key :id
    column :name,        String, null: false
    column :description, String, null: false
    column :content,     String, null: false
    end
  end
end
