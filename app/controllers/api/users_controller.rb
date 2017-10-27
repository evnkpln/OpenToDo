class Api::UsersController < ApiController
  before_action :authenticated?

  def index
    render json: User.all, each_serializer: UserSerializer
  end
end
