class PublicFilesController < ApplicationController
  def show
    puts "event #{event.inspect}"
    # render json: {action: "catchall", event: event}
    path = Jets.root + "public" + params[:catchall]
    if path.exist?
      render file: path
    else
      render status: 404
    end
  end
end
