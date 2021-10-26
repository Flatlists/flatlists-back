class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :name, :bio, :created_at
end
