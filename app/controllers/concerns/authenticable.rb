module Authenticable
  extend ActiveSupport::Concerns
  
  included do
    include DeviseTokenAuth::Concerns::SetUserByToken 
    before_action :authenticate_user!
  end
end