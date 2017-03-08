class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index, :new, :create]

    def new

    end

    def create
    if params[:name].nil?
       redirect_to '/login'
     elsif params[:name].empty?
         redirect_to '/login'
     elsif params[:name]
        session[:name] = params[:name]
        redirect_to '/'
      end
    end

    def destroy
       session.delete :name
       redirect_to '/login'
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
