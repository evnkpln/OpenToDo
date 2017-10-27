class Api::UsersController < ApiController
  before_action :authenticated?, except: [:create]

  def index
    render json: User.all, each_serializer: UserSerializer
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :name)
  end
end
