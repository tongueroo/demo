# TODO: Use a nicer DSL for migrations. This works for now. Would love pull requests :)
# TODO: Add migration support for more than just creating tables.

require "jets"

db = Jets::BaseModel.db # uses the appropriate dynamodb endpoint
  # so we can test with local DynamoDB or with live AWS DynamoDB

# Create table params
params = {
  table_name: 'proj-posts',
  key_schema: [{:attribute_name=>"id", :key_type=>"HASH"}],
  attribute_definitions: [{:attribute_name=>"id", :attribute_type=>"S"}],
  provisioned_throughput: {
    read_capacity_units: 5,
    write_capacity_units: 5
  }
}

begin
  result = db.create_table(params)

  puts 'DynamoDB Table: proj-posts Status: ' +
        result.table_description.table_status;
rescue  Aws::DynamoDB::Errors::ServiceError => error
  puts 'Unable to create table:'
  puts error.message
end
