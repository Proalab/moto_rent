class PasswordResetsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset if user
    redirect_to root_url
    flash[:warning] = I18n.t 'password_reset_block.email_reset_password_send'
  end

  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end

  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path
      flash[:danger] = I18n.t 'password_reset_block.password_expired'
    elsif @user.update_attributes(params.permit![:user])
      redirect_to root_url
      flash[:warning] = I18n.t 'password_reset_block.password_has_been_reset'
    else
      render :edit
    end
  end
end
