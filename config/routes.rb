Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/v1/user'

  #site.com/admin/v1
  namespace :admin do
    namespace :v1 do
    end
  end

  #site.com/storefront/v1
  namespace :storefront do
    namespace :v1 do
    end
  end
end
