class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
  	@user = User.create!(:nome => params[:user][:password], :email => params[:user][:email], :password => params[:user][:password], :password_confirmation=> params[:user][:password_confirmation])
	redirect_to 
  end
end
