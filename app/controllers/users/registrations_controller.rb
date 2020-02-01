# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up

  def new
    @user = User.new
  end

  # POST /resource
  def create
    @user = User.new(sign_up_params)
    unless @user.valid?
      flash.now[:alert] = @user.errors.full_messages
      render :new and return
    end
    session["devise.regist_data"] = {user: @user.attributes}
    session["devise.regist_data"][:user]["password"] = params[:user][:password]
    @cellphone = @user.build_cellphone
    render :new_cellphone
  end

  def create_cellphone
    @user = User.new(session["devise.regist_data"]["user"])
    @cellphone = Cellphone.new(cellphone_params)
    unless @cellphone.valid?
      flash.now[:alert] = @cellphone.errors.full_messages
      render :new_cellphone and return
    end
    @user.build_cellphone(@cellphone.attributes)
    session["cellphone"] = @cellphone.attributes
    @address = @user.build_address
    render :new_address
  end

  def create_address
    @user = User.new(session["devise.regist_data"]["user"])
    @cellphone = Cellphone.new(session["cellphone"])
    @address = Address.new(address_params)
    unless @address.valid?
      flash.now[:alert] = @address.errors.full_messages
      render :new_address and return
    end
    @user.build_cellphone(@cellphone.attributes)
    @user.build_address(@address.attributes)
    session["address"] = @address.attributes
    @card = @user.build_card
    render :new_card
  end


  def create_card
    @user = User.new(session["devise.regist_data"]["user"])
    @cellphone = Cellphone.new(session["cellphone"])
    @address = Address.new(session["address"])
    @card = Card.new(card_params)
    unless @card.valid?
      flash.now[:alert] = @card.errors.full_messages
      render :new_card and return
    end
    @user.build_cellphone(@cellphone.attributes)
    @user.build_address(@address.attributes)
    @user.build_card(@card.attributes)
    @user.save
    sign_in(:user, @user)
  end 

  def card__inner
  end
  def new_card_inner
  end
  def edit_card
  end
  def update_card
  end
  def edit_deliver_address
  end
  def update_deliver_address
  end
  def edit_email_password
  end
  def edit_sms_confirmation
  end
  def update_sms_confirmation
  end
  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  end

  def cellphone_params
    params.require(:cellphone).permit(:number)
  end

  def address_params
    params.require(:address).permit(:zip_code, :prefecture, :city, :address, :building, :phone_tell)
  end

  def card_params
    params.require(:card).permit(:number, :validated_date_year, :validated_date_month, :security_number)
  end



  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
