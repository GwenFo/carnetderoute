class ErrorsController < ApplicationController
  def not_found
    render(:status => 404)
  end

  def change_rejected
  	render(:status => 422)
  end
end