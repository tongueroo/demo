# Example seed data for demo

require 'aws-sdk-dynamodb'  # v2: require 'aws-sdk'

# Create dynamodb client
dynamodb = Aws::DynamoDB::Client.new

dynamodb.batch_write_item({
  request_items: { # required
    "TableName" => [
      {
        put_request: {
          item: { # required
            "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
          },
        },
        delete_request: {
          key: { # required
            "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
          },
        },
      },
    ],
  },
  return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
  return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
})
