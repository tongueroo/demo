Jets.application.configure do
  config.project_name = "demo"
  # config.env_extra = 2

  config.function.timeout = 10
  # config.function.memory_size = 1536
  # config.function.cors = true
  config.function.environment = {
    global_app_key1: "global_app_value1",
    global_app_key2: "global_app_value2",
  }
  config.function.dead_letter_queue = { target_arn: "arn" }
  config.function.vpc_config = {
    security_group_ids: [ "sg-1", "sg-2" ],
    subnet_ids: [ "subnet-1", "subnet-2" ]
  }
end
