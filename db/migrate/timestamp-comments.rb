# TODO: Use a nicer DSL for migrations. This works for now. Would love pull requests :)
require 'aws-sdk-dynamodb'  # v2: require 'aws-sdk'

# Create dynamodb client
dynamodb = Aws::DynamoDB::Client.new

# Create table Movies with year (integer) and title (string)
params = {
    table_name: 'proj-dev-2-comments-mwr',
    key_schema: [{:attribute_name=>"post_id", :key_type=>"HASH"}, {:attribute_name=>"created_at", :key_type=>"RANGE"}],
    attribute_definitions: [{:attribute_name=>"post_id", :attribute_type=>"S"}, {:attribute_name=>"created_at", :attribute_type=>"S"}],
    provisioned_throughput: {
        read_capacity_units: 5,
        write_capacity_units: 5
  }
}

begin
  result = dynamodb.create_table(params)

  puts 'DynamoDB Table: proj-dev-2-comments-mwr Status: ' +
        result.table_description.table_status;
rescue  Aws::DynamoDB::Errors::ServiceError => error
  puts 'Unable to create table:'
  puts error.message
end
