class NewsSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle, :body
end
