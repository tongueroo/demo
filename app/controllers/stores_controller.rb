class StoresController < ApplicationController
  class_properties(memory_size: 768)
  class_env(my_test: "data")

  # timeout 30
  properties(timeout: 20, memory_size: 1000)
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
