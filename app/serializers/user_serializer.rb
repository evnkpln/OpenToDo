class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :email


  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
