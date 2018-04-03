class CommentSerializer < ActiveModel::Serializer
  attributes :id, :author, :comment
end
