class ListSerializer < ActiveModel::Serializer
  attributes :id, :private, :created_at

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
