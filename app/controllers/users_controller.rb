#encoding: utf-8

class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
    # if params[:user]
    #   @user.name = params[:name]
    #   @user.age = params[:age]
    #   @user.email = params[:email]
    #       end

  end

  def show
  end

  def create
    # @users = User.create params[:user]
    @user = User.new
    @user.name = params[:user][:name]
    @user.age = params[:user][:age]
    @user.email = params[:user][:email]
    # @user.save
    if  @user.save
       redirect_to "/users"
    else
      render "new"
    end
 end

  def update
  end

  def edit
  end

  def destroy
  end
end
