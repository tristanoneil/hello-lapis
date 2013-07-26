import create_table, types from require "lapis.db.schema"

{
  [1]: =>
    create_table "breweries", {
      { "id", types.serial }
      { "name", types.text }
      { "description", types.text null: true }

      "PRIMARY KEY (id)"
    }
}
