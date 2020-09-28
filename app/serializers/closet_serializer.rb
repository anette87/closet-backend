class ClosetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id

  attribute :items do |object|
    object.items.map { |item| ItemSerializer.new(item) }
  end
end
