class StoresController < ApplicationController
  # timeout 30
  properties(dead_letter_config: "arn", timeout: 20, role: "myrole", memory_size: 1000)
  def index
  end

  timeout 35
  def new
    @item = {name: "soda"}
  end

  environment(key1: "value1", key2: "value2")
  memory_size(1024)
  def show
  end
end
