class AddressesController < ApplicationController
  before_action :addressable_data
  def index
    @addresses = @user.addresses
  end

  def new
    @address = @user.addresses.new
  end
  
  def create
    binding.pry
    @address = @user.addresses.new(address_permited_params)
    if @address.save
      redirect_to addresses_path
    else
      render 'new'
    end
  end
  def edit
    @address = Address.find(params[:id])
  end
  
  def update
    @address = @user.address.find(params[:id])
    if @address.update(address_permited_params)
      redirect_to addresses_path
    else
      render 'edit'
    end
  end

  private

  def addressable_data
    @address_type_id = request.env["REQUEST_PATH"].split('/') 
    @addressable_type = @address_type_id[1].capitalize.singularize#.constantize
    # @user = User.find([@address_type_id[2].to_i])
    if  @addressable_type == "User"
    @user = current_user
    elsif @addressable_type == "Dashboard"
      @user = current_dashboard
    end
  end

  def address_permited_params
    params.require(:address).permit(:flat_no, :location, :city, :landmark, :address_type)
  end

end
