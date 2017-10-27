class ListSerializer < ActiveModel::Serializer
  attributes :id, :user, :private, :items, :created_at

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
