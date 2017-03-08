class SecretsController < ApplicationController


  def show
    if logged_in?
      render :show 
    else
      redirect_to '/login'
  end
end



end
