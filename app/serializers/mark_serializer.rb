class MarkSerializer < ActiveModel::Serializer
  attributes :id, :value, :post_id, :average

  def average
    Post.find(object.post_id).marks.average(:value)
  end
end
