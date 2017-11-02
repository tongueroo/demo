require 'aws-sdk-dynamodb'  # v2: require 'aws-sdk'

# Create dynamodb client
dynamodb = Aws::DynamoDB::Client.new

# Create table Movies with year (integer) and title (string)
params = {
    table_name: 'proj-dev-2-posts-hmh',
    key_schema: [{:attribute_name=>"id", :key_type=>"RANGE"}],
    attribute_definitions: [{:attribute_name=>"id", :attribute_type=>"S"}],
    provisioned_throughput: {
        read_capacity_units: 5,
        write_capacity_units: 5
  }
}

begin
  result = dynamodb.create_table(params)

  puts 'Created table. Status: ' +
        result.table_description.table_status;
rescue  Aws::DynamoDB::Errors::ServiceError => error
  puts 'Unable to create table:'
  puts error.message
end
