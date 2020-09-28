class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :closet_id

  attribute :closet do |object|
    ClosetSerializer.new(object.closet)
  end
end
