class StoresController < ApplicationController
  def new
    @item = {name: "soda"}
  end
end
