class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :brand, :color, :season ,:image, :id
end
