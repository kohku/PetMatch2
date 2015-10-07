class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]
  
  def index
    @users = User.all

    respond_to do |format|
      format.html #index.html.erb
      format.json { render json: @users }
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  private 

  def valid_blank_password
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
  end

  def set_user
    @user = User.find(params[:id])
  end
end
